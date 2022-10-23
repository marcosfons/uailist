import 'package:drift/drift.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/entities/buy_list_with_products.dart';
import 'package:uailist/src/core/database/tables/buy_lists_table.dart';
import 'package:uailist/src/core/database/tables/products_buy_list.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';

part 'buy_list_dao.g.dart';

@DriftAccessor(tables: [BuyLists, ProductsBuyList])
class BuyListDAO extends DatabaseAccessor<AppDatabase> with _$BuyListDAOMixin {
  BuyListDAO(AppDatabase db) : super(db);

  Stream<List<BuyListWithProducts>> watchBuyLists() async* {
    yield [];
    yield* select(buyLists)
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

  Stream<BuyListWithProducts?> watchBuyList(String buyListUuid) async* {
    yield* select(buyLists)
        .join([
          leftOuterJoin(
            productsBuyList,
            productsBuyList.buyListUuid.equalsExp(buyLists.uuid),
          )
        ])
        .watch()
        .map<BuyListWithProducts?>(
          (rows) {
            if (rows.isEmpty) {
              return null;
            }

            final products = rows
                .map((row) => row.readTableOrNull(productsBuyList))
                .where((el) => el != null)
                .toList()
                .cast<ProductBuyList>();

            return BuyListWithProducts(
              rows[0].readTable(buyLists),
              products,
            );
          },
        );
  }

  Future<Failure?> createBuyList(BuyListsCompanion buyList) async {
    try {
      await into(buyLists).insert(buyList);
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<Failure?> editBuyListWithProducts(BuyListWithProducts buyList) async {
    try {
      await transaction(() async {
        await (update(buyLists)
              ..where(
                (tbl) => tbl.uuid.equals(buyList.buyList.uuid),
              ))
            .write(buyList.buyList);

        await (delete(productsBuyList)
              ..where((tbl) => tbl.buyListUuid.equals(buyList.buyList.uuid)))
            .go();

        await batch((batch) {
          batch.insertAll(productsBuyList, buyList.products);
        });
      });
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<Failure?> addProductToBuyList(
    ProductsBuyListCompanion productBuyList,
  ) async {
    try {
      await into(productsBuyList).insert(productBuyList);
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
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
