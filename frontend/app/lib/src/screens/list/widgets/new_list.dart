import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/list/widgets/product_card.dart';

class NewList extends StatefulWidget {
  const NewList({super.key});

  @override
  State<NewList> createState() => _NewListState();
}

class _NewListState extends State<NewList> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 35, right: 0, bottom: 0),
            child: Row(
              children: [
                IconButton(
                  iconSize: 25,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: theme.colorScheme.primary,
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/lists');
                  },
                ),
                Expanded(
                  child: TextField(
                    scribbleEnabled: true,
                  ),
                )
              ],
            ),
          ),
          const Text(
            'Nova Lista',
            style: TextStyle(
              color: Color(0xff717171),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          ProductCard(),
          ProductCard(),
          ProductCard(),
        ],
      ),
    );
  }
}
