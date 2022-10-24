import 'package:drift/drift.dart';
import 'package:uailist/src/core/database/tables/buy_lists_table.dart';

class Supermarkets extends Table {
  TextColumn get uuid => text().clientDefault(() => uuidObj.v4())();

  TextColumn get name => text()();

  TextColumn get address => text()();

  @JsonKey('image_url')
  TextColumn get imageUrl => text().nullable()();

  RealColumn get latitude => real().nullable()();

  RealColumn get longitude => real().nullable()();

  @JsonKey('updated_at')
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @JsonKey('created_at')
  DateTimeColumn get createdAt => dateTime().nullable()();

  BoolColumn get synced =>
      boolean().nullable().withDefault(const Constant(true))();

  @override
  Set<Column>? get primaryKey => {uuid};
}
