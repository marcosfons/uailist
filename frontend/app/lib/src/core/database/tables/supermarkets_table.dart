import 'package:drift/drift.dart';

class Supermarkets extends Table {
  TextColumn get uuid => text()();

  TextColumn get name => text()();

  TextColumn get address => text()();

  TextColumn get imageUrl => text().nullable()();

  @override
  Set<Column>? get primaryKey => {uuid};
}
