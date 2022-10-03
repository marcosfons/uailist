import 'package:drift/drift.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/entities/buy_list_with_products.dart';
import 'package:uailist/src/core/database/tables/buy_lists_table.dart';
import 'package:uailist/src/core/database/tables/products_buy_list.dart';

part 'buy_list_dao.g.dart';

@DriftAccessor(tables: [BuyLists, ProductsBuyList])
class BuyListDAO extends DatabaseAccessor<AppDatabase> with _$BuyListDAOMixin {
  BuyListDAO(AppDatabase db) : super(db);

  Stream<List<BuyListWithProducts>> watchBuyLists() {
    return select(buyLists)
        .join(
          [
            leftOuterJoin(
              productsBuyList,
              productsBuyList.buyListUuid.equalsExp(buyLists.uuid),
            )
          ],
        )
        .watch()
        .map<List<BuyListWithProducts>>(
          (rows) {
            final groupedRows = _groupBy(
              rows,
              (row) => row.readTable(buyLists),
            );

            return groupedRows
                .map((BuyList buyList, List<TypedResult> rows) {
                  final products = rows
                      .map((row) => row.readTableOrNull(productsBuyList))
                      .where((product) => product != null)
                      .cast<ProductBuyList>()
                      .toList();

                  return MapEntry(
                    buyList,
                    BuyListWithProducts(buyList, products),
                  );
                })
                .values
                .toList();
          },
        );
  }

  /// Copied from [https://api.flutter.dev/flutter/package-collection_collection/groupBy.html]
  static Map<T, List<S>> _groupBy<S, T>(Iterable<S> values, T Function(S) key) {
    var map = <T, List<S>>{};
    for (var element in values) {
      (map[key(element)] ??= []).add(element);
    }
    return map;
  }
}
