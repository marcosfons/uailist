import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/lists/lists_screen.dart';
import 'package:uailist/src/screens/new_list/new_list_route.dart';
import 'package:uailist/src/shared/widgets/shared_axis_transition_page.dart';

final listRoute = GoRoute(
  path: '/lists',
  builder: (context, state) {
    return const ListsScreen();
  },
  pageBuilder: (context, state) {
    return const SharedAxisTransitionPage(
      key: ValueKey('Listas'),
      child: ListsScreen(),
    );
  },
  routes: [
    newListRoute,
  ],
);
