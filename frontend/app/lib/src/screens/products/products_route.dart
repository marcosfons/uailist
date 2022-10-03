import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
);
