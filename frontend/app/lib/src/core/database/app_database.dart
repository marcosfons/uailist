// These imports are only needed to open the database
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:uailist/src/core/database/daos/session/auth_store_dao.dart';
import 'package:uailist/src/core/database/tables/sessions_table.dart';
import 'package:uailist/src/core/failures/failure.dart';

part 'app_database.g.dart';

final databaseProvider = Provider((ref) => AppDatabase());

@DriftDatabase(
  tables: [Sessions],
  daos: [AuthStoreDAO],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<Failure?> deleteEverything() {
    return transaction(() async {
      await customStatement('PRAGMA foreign_keys = OFF');
      await Future.wait(allTables.map((table) => delete(table).go()));
      await customStatement('PRAGMA foreign_keys = ON');
      return null;
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}