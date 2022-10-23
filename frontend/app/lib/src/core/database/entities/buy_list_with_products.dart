import 'package:uailist/src/core/database/app_database.dart';

class BuyListWithProducts {
  final BuyList buyList;
  final List<ProductBuyList> products;

  BuyListWithProducts(this.buyList, this.products);

  int get totalItems => products.length;

  int get boughtProducts => products.fold(
        0,
        (previous, product) => previous + (product.bought ? 1 : 0),
      );

  double get progress => boughtProducts / totalItems;

  BuyListWithProducts copyWith({
    BuyList? buyList,
    List<ProductBuyList>? products,
  }) {
    return BuyListWithProducts(
      buyList ?? this.buyList,
      products ?? this.products,
    );
  }
}
