import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/new_supermarkets/new_supermarkets_route.dart';
import 'package:uailist/src/screens/supermarket/supermarket_screen.dart';
import 'package:uailist/src/screens/supermarkets/supermarkets_screen.dart';
import 'package:uailist/src/shared/widgets/shared_axis_transition_page.dart';

final supermarketsRoute = GoRoute(
  path: '/supermarkets',
  builder: (context, state) {
    return const SupermarketsScreen();
  },
  pageBuilder: (context, state) {
    return const SharedAxisTransitionPage(
      key: ValueKey('Supermarkets'),
      child: SupermarketsScreen(),
    );
  },
  routes: [
    newSupermarketsRoute,
    GoRoute(
      path: 'supermarket',
      builder: (context, state) {
        if (state.extra != null && state.extra is Supermarket) {
          return SupermarketScreen(supermarket: state.extra as Supermarket);
        }
        return Container();
      },
    )
  ],
);
