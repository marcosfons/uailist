import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/list/list_controller.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({super.key, required this.product});

  final ProductBuyList product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = Theme.of(context);
    final controller = ref.watch(listController);

    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: product.bought,
          onChanged: (bool? bought) {
            controller.updateProductBuyListBought(product, bought);
          },
        ),
        IntrinsicWidth(
          child: TextFormField(
            initialValue: product.quantity.toString(),
            decoration: const InputDecoration(
              fillColor: Colors.white,
              filled: true,
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            onChanged: (quantityText) {
              final quantity = int.tryParse(quantityText);

              controller.updateProductBuyListQuantity(product, quantity);
            },
          ),
        ),
        Expanded(
          child: AutoSizeText(
            product.name,
            maxLines: 1,
          ),
        ),
        IntrinsicWidth(
          child: TextFormField(
            initialValue: 'R\$0.00',
            decoration: const InputDecoration(
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            controller.removeProductBuyList(product);
          },
        )
      ],
    );
  }
}



// class ProductCard extends StatefulWidget {
//   const ProductCard({super.key, required this.product});

//   final ProductBuyList product;

//   @override
//   State<ProductCard> createState() => _ProductCardState();
// }
// 
// class _ProductCardState extends State<ProductCard> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     final themeData = Theme.of(context);
//     final controller = ref.watch(listController);

//     return Row(
//       children: [
//         Checkbox(
//           checkColor: Colors.white,
//           value: isChecked,
//           onChanged: (bool? value) {
//             setState(() {
//               isChecked = value!;
//             });
//           },
//         ),
//         IntrinsicWidth(
//           child: TextFormField(
//             initialValue: widget.product.quantity.toString(),
//             decoration: const InputDecoration(
//               fillColor: Colors.white,
//               filled: true,
//             ),
//           ),
//         ),
//         Expanded(
//           child: AutoSizeText(
//             widget.product.name,
//             maxLines: 1,
//           ),
//         ),
//         IntrinsicWidth(
//           child: TextFormField(
//             initialValue: 'R\$0.00',
//             decoration: const InputDecoration(
//               fillColor: Colors.white,
//               filled: true,
//             ),
//           ),
//         ),
//         IconButton(
//           icon: const Icon(Icons.delete),
//           onPressed: () {},
//         )
//       ],
//     );
//   }
// }
