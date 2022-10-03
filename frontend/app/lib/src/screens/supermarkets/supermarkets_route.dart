import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/supermarkets/supermarkets_screen.dart';
import 'package:uailist/src/shared/widgets/shared_axis_transition_page.dart';

final supermarketsRoute = GoRoute(
  path: '/supermarkets',
  pageBuilder: (context, state) {
    return const SharedAxisTransitionPage(
      key: ValueKey('Supermarkets'),
      child: SupermarketsScreen(),
    );
  },
);
