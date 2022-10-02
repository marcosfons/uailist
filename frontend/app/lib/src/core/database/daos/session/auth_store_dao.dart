import 'dart:async';

import 'package:drift/drift.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/tables/sessions_table.dart';
import 'package:uailist/src/core/logger/logger.dart';

part 'auth_store_dao.g.dart';

@DriftAccessor(tables: [Sessions])
class AuthStoreDAO extends DatabaseAccessor<AppDatabase>
    with _$AuthStoreDAOMixin
    implements AuthStore {
  AuthStoreDAO(AppDatabase db) : super(db);

  @override
  FutureOr<String?> getString(String key) async {
    try {
      final session = await (select(sessions)
            ..where((tbl) => tbl.key.equals(key)))
          .getSingleOrNull();

      return session?.value;
    } catch (e) {
      getLogger().e(e);
      return null;
    }
  }

  @override
  FutureOr<void> removeItem(String key) async {
    try {
      await (delete(sessions)..where((tbl) => tbl.key.equals(key))).go();
    } catch (e) {
      getLogger().e(e);
    }
  }

  @override
  FutureOr<void> setString(String key, String value) async {
    try {
      await into(sessions).insertOnConflictUpdate(
        SessionsCompanion.insert(key: key, value: value),
      );
    } catch (e) {
      getLogger().e(e);
    }
  }
}
