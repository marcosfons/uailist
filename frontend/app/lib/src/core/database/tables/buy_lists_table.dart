import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

const uuidObj = Uuid();

class BuyLists extends Table {
  TextColumn get uuid => text().clientDefault(() => uuidObj.v4())();

  TextColumn get name => text()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get syncedAt => dateTime().nullable()();

  DateTimeColumn get deletedAt => dateTime().nullable()();

  BoolColumn get synced => boolean().generatedAs(syncedAt.isNotNull())();

  BoolColumn get deleted => boolean().generatedAs(deletedAt.isNotNull())();

  @override
  Set<Column>? get primaryKey => {uuid};
}
