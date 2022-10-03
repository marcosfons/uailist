import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/entities/buy_list_with_products.dart';

final listsController = Provider((ref) {
  return ListsController(
    ref.read(databaseProvider),
  );
});

class ListsController {
  final AppDatabase _appDatabase;

  ListsController(this._appDatabase);

  Stream<List<BuyListWithProducts>> get buyLists =>
      _appDatabase.buyListDAO.watchBuyLists();
}
