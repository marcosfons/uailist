import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uailist/src/core/database/app_database.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
    this.selected,
    this.onSelectedChange,
  });
  final Product product;
  final Function()? onTap;
  final void Function(bool? selected)? onSelectedChange;
  final bool? selected;

  @override
  Widget build(BuildContext context) {
    if (selected != null) {
      return CheckboxListTile(
        title: Text(product.name),
        subtitle: Text(product.brand ?? ''),
        value: selected,
        onChanged: (bool? a) {
          onSelectedChange!(!(selected ?? false));
        },
        //leading: CircleAvatar(
        //  radius: 30,
        //  backgroundImage: product.imageUrl != null
        //      ? CachedNetworkImageProvider(product.imageUrl!)
        //      : null,
        //),
      );
    }

    return ListTile(
      title: Text(product.name),
      subtitle: Text(product.brand ?? ''),
      onTap: onTap,
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: product.imageUrl != null
            ? CachedNetworkImageProvider(product.imageUrl!)
            : null,
      ),
    );
  }
}
