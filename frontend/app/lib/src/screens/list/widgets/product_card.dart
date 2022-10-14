import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData = Theme.of(context);
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
        Expanded(
            child: Align(
          alignment: Alignment.centerLeft,
          child: TextField(
              decoration: InputDecoration(hintText: 'nome do produto')),
        )),
        IntrinsicWidth(child: TextFormField(initialValue: 'R\$0.00')),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {},
        )
      ],
    );
  }
}

/*import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  final String productName;
  final double totalProduct;
  final double quantProduct;
  

  ProductCard({
    super.key,
    required this.productName,
    required this.totalProduct,
    required this.quantProduct,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      decoration:
        InputDecoration(border: InputBorder.none, 
        icon: icon,
        hintText: 'Nome do produto'
      ),
    );
   
        
       
  }
}
*/