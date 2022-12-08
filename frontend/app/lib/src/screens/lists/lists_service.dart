import 'package:artemis/artemis.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/core/services/hasura/graphql_api.graphql.dart';

class ListsService {
  final ArtemisClient _hasuraClient;
  final AppDatabase _appDatabase;

  ListsService(this._hasuraClient, this._appDatabase);

  Future<Failure?> updateNotSyncedBuyLists() async {
    try {
      final buyLists = await _appDatabase.buyListDAO.getNotSyncedBuyLists();
      if (buyLists.isEmpty) {
        return null;
      }

      final variables = buyLists
          .map((el) => BuyListInsertInput.fromJson(el.toUpsertJson()))
          .toList();

      final response = await _hasuraClient.execute(
        UpsertBuyListMutation(
          variables: UpsertBuyListArguments(
            buyList: variables,
          ),
        ),
      );

      if (response.hasErrors) {
        return const UnknownFailure();
      }

      print('Success buy list upsert');

      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }
}
