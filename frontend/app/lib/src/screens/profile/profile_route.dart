import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/profile/profile_screen.dart';
import 'package:uailist/src/shared/widgets/shared_axis_transition_page.dart';

final profileRoute = GoRoute(
  path: '/profile',
  pageBuilder: (context, state) {
    return const SharedAxisTransitionPage(
      key: ValueKey('Profile'),
      child: ProfileScreen(),
    );
  },
);
