import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

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
        IntrinsicWidth(child: TextFormField(initialValue: '1')),
        const Expanded(
            child: Align(
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(hintText: 'nome do produto')),
        )),
        IntrinsicWidth(child: TextFormField(initialValue: 'R\$0.00')),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {},
        )
      ],
    );
  }
}
