import 'package:drift/drift.dart';
import 'package:uailist/src/core/database/tables/buy_lists_table.dart';

class Products extends Table {
  TextColumn get uuid => text().clientDefault(() => uuidObj.v4())();

  TextColumn get name => text()();

  TextColumn get brand => text().nullable()();

  @JsonKey('image_url')
  TextColumn get imageUrl => text().nullable()();

  RealColumn get weight => real().nullable()();

  @JsonKey('updated_at')
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @JsonKey('created_at')
  DateTimeColumn get createdAt => dateTime().nullable()();

  BoolColumn get synced =>
      boolean().nullable().withDefault(const Constant(true))();

  @override
  Set<Column>? get primaryKey => {uuid};
}
