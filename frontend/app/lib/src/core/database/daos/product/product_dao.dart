import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/tables/products_table.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';

part 'product_dao.g.dart';

@DriftAccessor(tables: [Products])
class ProductDAO extends DatabaseAccessor<AppDatabase> with _$ProductDAOMixin {
  ProductDAO(AppDatabase db) : super(db);

  Stream<List<Product>> watchProducts() {
    return (select(products)).watch();
  }

  Future<Failure?> insertProducts(
    List<ProductsCompanion> newProducts,
  ) async {
    try {
      await batch((batch) async {
        batch.insertAllOnConflictUpdate(products, newProducts);
      });
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<DateTime> getLastUpdatedAt() async {
    final defaultDate = DateTime(1990);

    try {
      final lastSupermarketUpdated = await (select(products)
            ..orderBy([(tbl) => OrderingTerm.desc(tbl.updatedAt)])
            ..limit(1))
          .getSingleOrNull();
      return lastSupermarketUpdated?.updatedAt ?? defaultDate;
    } catch (e) {
      getLogger().e(e);
      return defaultDate;
    }
  }

  Future<Either<Failure, List<Product>>> productsNotSynced() async {
    try {
      final notSyncedProducts =
          await (select(products)..where((tbl) => tbl.synced.not())).get();
      return right(notSyncedProducts);
    } catch (e) {
      getLogger().e(e);
      return left(const UnknownFailure());
    }
  }
}
