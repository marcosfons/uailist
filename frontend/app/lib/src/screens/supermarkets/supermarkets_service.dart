import 'dart:io';

import 'package:artemis/client.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:mime/mime.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/core/services/hasura/graphql_api.graphql.dart';
import 'package:stream_transform/stream_transform.dart';

class SupermarketsService {
  final ArtemisClient _hasuraClient;
  final AppDatabase _appDatabase;
  final NhostClient _nhostClient;

  SupermarketsService(this._hasuraClient, this._appDatabase, this._nhostClient);

  Future<Either<Failure, String>> changeSupermarketImage(
    String supermarketId,
    String imagePath, {
    Function(double?)? onProgress,
    Function(Uint8List imageBytes)? onImageBytes,
  }) async {
    try {
      onProgress?.call(0);

      final imageMimeType = lookupMimeType(imagePath);

      final imageBytes = await File(imagePath).readAsBytes();
      onImageBytes?.call(imageBytes);

      final hash = Object.hash(supermarketId, imagePath, DateTime.now());

      onProgress?.call(0.1);

      final result = await _nhostClient.storage.uploadBytes(
        fileName: '/supermarkets/$supermarketId/$hash',
        fileContents: imageBytes,
        mimeType: imageMimeType ?? 'image/jpeg',
        onUploadProgress: (request, progress, total) {
          onProgress?.call(0.1 + (progress / total * 0.8));
        },
      );
      onProgress?.call(0.9);

      final imageUrl =
          '${_nhostClient.backendUrl}v1/storage/files/${result.id}';
      final response = await _hasuraClient.execute(
        AppChangeSupermarketImageUrlMutation(
          variables: AppChangeSupermarketImageUrlArguments(
            uuid: supermarketId,
            newImageUrl: imageUrl,
          ),
        ),
      );
      onProgress?.call(0.98);

      await _appDatabase.authDAO.updateUser(
        UsersCompanion(
          id: Value(supermarketId),
          avatarUrl: Value(imageUrl),
        ),
      );
      onProgress?.call(1);

      if (response.hasErrors) {
        getLogger().e(response.errors);
      } else {}
      onProgress?.call(null);
      return right(imageUrl);
    } catch (e) {
      getLogger().e(e);
      onProgress?.call(null);
      return left(const UnknownFailure());
    }
  }

  Stream<List<Supermarket>> supermarketsStream() =>
      _appDatabase.supermarketDAO.watchSupermarkets();

  Stream<List<Supermarket>> supermarketsSearchStream(
      Stream<String> searchStream) {
    return _appDatabase.supermarketDAO
        .watchSupermarkets()
        .combineLatest(searchStream, (supermarkets, search) {
      return supermarkets.where((supermarket) {
        return supermarket.name.toLowerCase().contains(search.toLowerCase());
      }).toList();
    });
  }

  Future<Failure?> loadSupermarkets() async {
    try {
      final lastSupermarketUpdated =
          await _appDatabase.supermarketDAO.getLastUpdatedAt();

      final response = await _hasuraClient.execute(
        GetSupermarketsQuery(
          variables: GetSupermarketsArguments(
            lastSyncedAt: lastSupermarketUpdated,
          ),
        ),
      );

      if (response.hasErrors || response.data == null) {
        getLogger().e(response.errors);
        return const UnknownFailure();
      }

      final updatedSupermarkets = response.data!.supermarket
          .map((supermarket) =>
              Supermarket.fromJson(supermarket.toJson()).toCompanion(false))
          .toList();

      await _appDatabase.supermarketDAO.insertSupermarkets(updatedSupermarkets);

      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<Failure?> createSupermarket(SupermarketsCompanion newSupermarket) {
    return _appDatabase.supermarketDAO.insertSupermarkets([newSupermarket]);
  }

  Future<Failure?> uploadNotSyncedSupermarkets() async {
    final notSyncedSupermarkets =
        await _appDatabase.supermarketDAO.supermarketsNotSynced();

    return notSyncedSupermarkets.fold(
      (failure) => failure,
      (data) async {
        if (data.isEmpty) {
          return null;
        }

        final response = await _hasuraClient.execute(
          UpsertSupermarketsMutation(
            variables: UpsertSupermarketsArguments(
              supermarkets: data.map((supermarket) {
                final json = supermarket.toJson();

                json['image_url'] =
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ46bLvngduY5qw5I3jRjHjo5BSlF3GlKWZzg&usqp=CAU';
                json['updated_at'] = DateTime.now().toIso8601String();
                json['created_at'] = DateTime.now().toIso8601String();

                return SupermarketInsertInput.fromJson(json);
              }).toList(),
            ),
          ),
        );

        if (response.hasErrors) {
          print(response.errors);
          getLogger().e('An error has occurred while inserting supermarkets');
          return const UnknownFailure();
        }

        return null;
      },
    );
  }
}
