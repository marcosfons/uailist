import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainScreenTitle(
              title: 'Produtos',
              centered: false,
              trailing: IconButton(
                iconSize: 30,
                icon: Icon(
                  Icons.add,
                  color: themeData.colorScheme.primary,
                ),
                onPressed: () {
                  GoRouter.of(context).push('/products/new');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
