import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/lists/widgets/list_card.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final DateTime date = DateTime.now();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainScreenTitle(
              title: 'Minhas listas',
              centered: false,
              trailing: IconButton(
                iconSize: 30,
                icon: Icon(
                  Icons.add,
                  color: themeData.colorScheme.primary,
                ),
                onPressed: () {
                  GoRouter.of(context).go('/lists/new');
                },
              ),
            ),
            ListCard(
              fun: () {},
              itemsTaken: 14.8,
              totalItems: 18,
              listDate: date,
              listName: 'Supermercado',
            ),
            ListCard(
              fun: () {},
              itemsTaken: 5,
              totalItems: 18,
              listDate: date,
              listName: 'Supermercado',
            ),
            ListCard(
              fun: () {},
              itemsTaken: 9,
              totalItems: 18,
              listDate: date,
              listName: 'Supermercado',
            ),
          ],
        ),
      ),
    );
  }
}
