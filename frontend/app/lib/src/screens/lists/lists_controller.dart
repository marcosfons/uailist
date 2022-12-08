import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/entities/buy_list_with_products.dart';
import 'package:uailist/src/core/services/hasura/hasura_client.dart';
import 'package:uailist/src/screens/lists/lists_service.dart';

final listsController = Provider((ref) {
  final controller = ListsController(
    ref.read(databaseProvider),
    ListsService(
      ref.read(hasuraClientProvider),
      ref.read(databaseProvider),
    ),
  );

  Timer synctimer = Timer.periodic(const Duration(seconds: 10), (timer) {
    // print('Syncing buyLists');
    // controller.sync();
  });

  ref.onDispose(() {
    synctimer.cancel();
    controller.dispose();
  });

  return controller;
});

class ListsController {
  final AppDatabase _appDatabase;
  final ListsService _service;

  ListsController(this._appDatabase, this._service);

  Stream<List<BuyListWithProducts>> get buyLists =>
      _appDatabase.buyListDAO.watchBuyLists();

  Future<void> sync() async {
    await _service.updateNotSyncedBuyLists();
  }

  void dispose() {}
}
