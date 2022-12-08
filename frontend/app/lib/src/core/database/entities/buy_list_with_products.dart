import 'package:uailist/src/core/database/app_database.dart';

class BuyListWithProducts {
  final BuyList buyList;
  final List<ProductBuyList> products;

  BuyListWithProducts(this.buyList, this.products);

  int get totalItems => products.fold(
      0, (previousValue, product) => previousValue + product.quantity);

  int get boughtProducts => products.fold(
        0,
        (previous, product) =>
            previous + (product.bought ? product.quantity : 0),
      );

  double get progress {
    if (totalItems > 0) {
      return boughtProducts / totalItems;
    }

    return 0;
  }

  BuyListWithProducts copyWith({
    BuyList? buyList,
    List<ProductBuyList>? products,
  }) {
    return BuyListWithProducts(
      buyList ?? this.buyList,
      products ?? this.products,
    );
  }

  Map<String, dynamic> toUpsertJson() {
    final map = buyList.toJson();

    map.remove('synced');
    map.remove('deleted');
    map.remove('syncedAt');
    map.remove('deletedAt');

    map['updated_at'] = DateTime.now().toLocal();
    map['created_at'] = map['createdAt'];

    map['product_buy_lists'] = {
      'on_conflict': {
        'constraint': 'product_buy_list_pkey',
        'update_columns': ['bought', 'price_uuid', 'quantity']
      },
      'data': products
          .map<Map>((el) => el.toJson()
            ..remove('buyListUuid')
            ..remove('createdAt'))
          .toList()
    };
    map.remove('product_buy_lists');

    map['product_buy_lists'] = null;

    return map;
  }
}
