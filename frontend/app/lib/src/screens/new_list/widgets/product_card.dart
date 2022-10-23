import 'package:flutter/material.dart';
import 'package:uailist/src/core/database/app_database.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});

  final ProductBuyList product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        IntrinsicWidth(
          child: TextFormField(
            initialValue: widget.product.quantity.toString(),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextField(
              decoration: InputDecoration(
                hintText: widget.product.name,
              ),
            ),
          ),
        ),
        IntrinsicWidth(
          child: TextFormField(initialValue: 'R\$0.00'),
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {},
        )
      ],
    );
  }
}
