import 'package:artemis/client.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/core/services/hasura/graphql_api.graphql.dart';
import 'package:stream_transform/stream_transform.dart';

class SupermarketsService {
  final ArtemisClient _hasuraClient;
  final AppDatabase _appDatabase;

  SupermarketsService(this._hasuraClient, this._appDatabase);

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
