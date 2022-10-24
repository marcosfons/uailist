import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/tables/supermarkets_table.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';

part 'supermarket_dao.g.dart';

@DriftAccessor(tables: [Supermarkets])
class SupermarketDAO extends DatabaseAccessor<AppDatabase>
    with _$SupermarketDAOMixin {
  SupermarketDAO(AppDatabase db) : super(db);

  Stream<List<Supermarket>> watchSupermarkets() {
    return (select(supermarkets)).watch();
  }

  Future<Failure?> insertSupermarkets(
    List<SupermarketsCompanion> newSupermarkets,
  ) async {
    try {
      await batch((batch) async {
        batch.insertAllOnConflictUpdate(supermarkets, newSupermarkets);
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
      final lastSupermarketUpdated = await (select(supermarkets)
            ..orderBy([(tbl) => OrderingTerm.desc(tbl.updatedAt)])
            ..limit(1))
          .getSingleOrNull();
      return lastSupermarketUpdated?.updatedAt ?? defaultDate;
    } catch (e) {
      getLogger().e(e);
      return defaultDate;
    }
  }

  Future<Either<Failure, List<Supermarket>>> supermarketsNotSynced() async {
    try {
      final notSyncedSupermarkets =
          await (select(supermarkets)..where((tbl) => tbl.synced.not())).get();
      return right(notSyncedSupermarkets);
    } catch (e) {
      getLogger().e(e);
      return left(const UnknownFailure());
    }
  }
}
