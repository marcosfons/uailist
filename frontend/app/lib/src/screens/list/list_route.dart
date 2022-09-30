import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/list/list_screen.dart';
import 'package:uailist/src/screens/list/widgets/new_list.dart';

import '../../shared/widgets/shared_axis_transition_page.dart';

final listRoute = GoRoute(
  path: '/lists',
  builder: (context, state) {
    return const ListScreen();
  },
  pageBuilder: (context, state) {
    return const SharedAxisTransitionPage(
      key: ValueKey('Listas'),
      child: ListScreen(),
    );
  },
  routes: [
    GoRoute(
      path: 'new',
      builder: (context, state) {
        return const NewList();
      },
    )
  ],
);
