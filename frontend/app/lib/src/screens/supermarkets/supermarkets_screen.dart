import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/supermarkets/widget/supermarkets_card.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

import '../../core/database/app_database.dart';

class SupermarketsScreen extends StatelessWidget {
  const SupermarketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainScreenTitle(
              title: 'Supermercados',
              centered: false,
              trailing: IconButton(
                iconSize: 30,
                icon: Icon(
                  Icons.add,
                  color: themeData.colorScheme.primary,
                ),
                onPressed: () {
                  GoRouter.of(context).push('/supermarkets/new');
                },
              ),
            ),
            Expanded(
              child: SupermarketsCard(
                supermarket: Supermarket(
                    uuid: '',
                    name: 'bergao',
                    address: 'rua jdjjdjdjjd',
                    imageUrl: null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
