import 'dart:async';

import 'package:drift/drift.dart';
import 'package:nhost_sdk/nhost_sdk.dart' show AuthStore;
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/tables/sessions_table.dart';
import 'package:uailist/src/core/database/tables/users_table.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';

part 'auth_dao.g.dart';

@DriftAccessor(tables: [Sessions, Users])
class AuthDAO extends DatabaseAccessor<AppDatabase>
    with _$AuthDAOMixin
    implements AuthStore {
  AuthDAO(AppDatabase db) : super(db);

  Stream<User?> watchCurrentUser() {
    return (select(users)..limit(1)).watchSingleOrNull();
  }

  Future<Failure?> insertOrUpdateUser(UsersCompanion user) async {
    try {
      await into(users).insertOnConflictUpdate(user);
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<Failure?> updateUser(UsersCompanion user) async {
    try {
      await (update(users)..where((tbl) => tbl.id.equals(user.id.value)))
          .write(user);
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

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
