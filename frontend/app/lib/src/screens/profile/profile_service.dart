import 'dart:async';
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

class ProfileService {
  final ArtemisClient _hasuraClient;
  final NhostClient _nhostClient;
  final AppDatabase _appDatabase;

  ProfileService(this._hasuraClient, this._nhostClient, this._appDatabase);

  Future<Either<Failure, String>> changeUserImage(
    String userId,
    String imagePath, {
    Function(double?)? onProgress,
    Function(Uint8List imageBytes)? onImageBytes,
  }) async {
    try {
      onProgress?.call(0);

      final imageMimeType = lookupMimeType(imagePath);

      final imageBytes = await File(imagePath).readAsBytes();
      onImageBytes?.call(imageBytes);

      final hash = Object.hash(userId, imagePath, DateTime.now());

      onProgress?.call(0.1);

      final result = await _nhostClient.storage.uploadBytes(
        fileName: '/users/$userId/$hash',
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
        AppChangeAvatarUrlMutation(
          variables: AppChangeAvatarUrlArguments(
            userId: userId,
            avatarUrl: imageUrl,
          ),
        ),
      );
      onProgress?.call(0.98);

      await _appDatabase.authDAO.updateUser(
        UsersCompanion(
          id: Value(userId),
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

  Future<Failure?> deleteUser(String userId) async {
    try {
      final response = await _hasuraClient.execute(AppDeleteUserMutation(
        variables: AppDeleteUserArguments(userId: userId),
      ));
      if (response.data?.deleteUser?.id == userId) {
        return null;
      }

      if (response.errors != null) {
        getLogger().e(response.errors);
      }
      return const UnknownFailure();
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<Failure?> changeUserName(String newUsername) async {
    try {
      final userId = _nhostClient.auth.currentUser!.id;
      final response = await _hasuraClient.execute(AppChangeUserNameMutation(
        variables: AppChangeUserNameArguments(
          userId: userId,
          name: newUsername,
        ),
      ));
      if (response.data?.updateUser?.displayName == newUsername) {
        return null;
      }

      if (response.errors != null) {
        getLogger().e(response.errors);
      }
      return const UnknownFailure();
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<Failure?> changeUserEmail(String newEmail) async {
    try {
      await _nhostClient.auth.changeEmail(newEmail);
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }
}
