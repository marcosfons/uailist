import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/new_product/new_product_route.dart';
import 'package:uailist/src/screens/product/product_screen.dart';
import 'package:uailist/src/screens/products/products_screen.dart';
import 'package:uailist/src/shared/widgets/shared_axis_transition_page.dart';

final productsRoute = GoRoute(
  path: '/products',
  pageBuilder: (context, state) {
    return const SharedAxisTransitionPage(
      key: ValueKey('Products'),
      child: ProductsScreen(),
    );
  },
  routes: [
    newProductRoute,
    GoRoute(
      path: 'product',
      builder: (context, state) {
        if (state.extra != null && state.extra is Product) {
          return ProductScreen(product: state.extra as Product);
        }
        return Container();
      },
    )
  ],
);
