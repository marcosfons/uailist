import 'package:flutter/material.dart';
import 'package:uailist/src/screens/supermarkets/supermarkets_route.dart';
import 'package:uailist/src/screens/supermarkets/widget/supermarkets_card.dart';

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
