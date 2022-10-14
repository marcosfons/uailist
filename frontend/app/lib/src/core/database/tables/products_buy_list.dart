import 'package:drift/drift.dart';
import 'package:uailist/src/core/database/tables/buy_lists_table.dart';

@DataClassName('ProductBuyList')
class ProductsBuyList extends Table {
  TextColumn get uuid => text().clientDefault(() => uuidClass.v4())();

  TextColumn get buyListUuid => text().references(BuyLists, #uuid)();

  TextColumn get name => text()();

  IntColumn get quantity => integer().withDefault(const Constant(0))();

  BoolColumn get bought => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column>? get primaryKey => {uuid};
}
