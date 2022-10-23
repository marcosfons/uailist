import 'package:drift/drift.dart';

class Products extends Table {
  TextColumn get uuid => text()();

  TextColumn get name => text()();

  TextColumn get brand => text()();

  TextColumn get imageUrl => text().nullable()();

  RealColumn get weight => real()();

  @override
  Set<Column>? get primaryKey => {uuid};
}
