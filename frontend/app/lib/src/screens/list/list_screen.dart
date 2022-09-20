import 'package:flutter/material.dart';
import 'package:uailist/src/screens/list/widgets/list_card.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Minhas Listas",
                  style: TextStyle(
                    color: Color(0xff717171),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(
                    Icons.add,
                    color: theme.colorScheme.primary,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          ListCard(),
          ListCard(),
          ListCard(),
        ],
      ),
    );
  }
}
