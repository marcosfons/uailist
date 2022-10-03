import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

const uuidClass = Uuid();

class BuyLists extends Table {
  TextColumn get uuid => text().clientDefault(() => uuidClass.v4())();

  TextColumn get name => text()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column>? get primaryKey => {uuid};
}
