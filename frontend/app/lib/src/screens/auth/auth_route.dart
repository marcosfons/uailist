import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/auth/auth_screen.dart';
import 'package:uailist/src/screens/auth/widgets/login_form.dart';
import 'package:uailist/src/screens/auth/widgets/register_form.dart';
import 'package:uailist/src/screens/auth/widgets/sign_out_widget.dart';
import 'package:uailist/src/shared/widgets/shared_axis_transition_page.dart';

final authRoute = ShellRoute(
  builder: (BuildContext context, GoRouterState state, Widget child) {
    return AuthScreen(
      form: child,
    );
  },
  routes: [
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) {
        return const SharedAxisTransitionPage(
          key: ValueKey('LoginScreen'),
          transitionDuration: Duration(milliseconds: 300),
          child: LoginForm(),
        );
      },
    ),
    GoRoute(
      path: '/register',
      pageBuilder: (context, state) {
        return const SharedAxisTransitionPage(
          key: ValueKey('RegisterScreen'),
          transitionDuration: Duration(milliseconds: 300),
          child: RegisterForm(),
        );
      },
    ),
    GoRoute(
      path: '/signOut',
      pageBuilder: (context, state) {
        return const SharedAxisTransitionPage(
          key: ValueKey('SignOutScreen'),
          transitionDuration: Duration(milliseconds: 300),
          child: SignOutWidget(),
        );
      },
    )
  ],
);
