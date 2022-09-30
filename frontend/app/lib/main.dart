import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/firebase_options.dart';
import 'package:uailist/src/core/themes/light_theme.dart';
import 'package:uailist/src/screens/auth/auth_route.dart';
import 'package:uailist/src/screens/home/home_screen.dart';
import 'package:uailist/src/screens/list/list_route.dart';
import 'package:uailist/src/screens/list/list_screen.dart';
import 'package:uailist/src/screens/list/widgets/new_list.dart';
import 'package:uailist/src/screens/profile/profile_route.dart';
import 'package:uailist/src/screens/profile/profile_screen.dart';
import 'package:uailist/src/shared/widgets/dashboard_scaffold.dart';
import 'package:uailist/src/shared/widgets/shared_axis_transition_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterNativeSplash.remove();

  runApp(
    ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Uailist',
      theme: lightTheme,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  late final GoRouter _router = GoRouter(
    initialLocation: '/lists',
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const Scaffold(),
        redirect: (context, state) async => '/login',
        // redirect: (state) => '/auth',
      ),
      ShellRoute(
        builder: (context, state, child) {
          return DashboardScaffold(page: child);
        },
        routes: [
          listRoute,
          profileRoute,
        ],
      ),
      authRoute,
      // GoRoute(
      //   path: '/lists',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const HomeScreen();
      //   },
      // ),
    ],
  );
}
