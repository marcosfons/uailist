import 'package:drift/drift.dart';

class Sessions extends Table {
  TextColumn get key => text()();

  TextColumn get value => text()();

  @override
  Set<Column>? get primaryKey => {key};
}
