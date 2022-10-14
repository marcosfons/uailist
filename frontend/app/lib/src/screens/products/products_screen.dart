import 'package:flutter/material.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: const [
            MainScreenTitle(title: 'Produtos'),
          ],
        ),
      ),
    );
  }
}
