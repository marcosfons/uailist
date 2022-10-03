import 'package:drift/drift.dart';

class Users extends Table {
  TextColumn get id => text()();

  TextColumn get email => text()();

  TextColumn get displayName => text()();

  TextColumn get avatarUrl => text()();

  @override
  Set<Column>? get primaryKey => {id};
}
