import 'package:flutter/material.dart';
import 'package:uailist/src/core/database/app_database.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.brand),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage:
            product.imageUrl != null ? NetworkImage(product.imageUrl!) : null,
      ),
    );
  }
}
