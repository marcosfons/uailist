import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:uailist/src/core/controllers/user_controller.dart';
import 'package:uailist/src/core/themes/light_theme.dart';
import 'package:uailist/src/screens/auth/auth_controller.dart';
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
  Logger.level = kDebugMode ? Level.verbose : Level.info;

  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    const ProviderScope(child: App()),
  );
}

class App extends StatefulHookConsumerWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends ConsumerState<App> {
  late final _userController = ref.read(userController);
  late final _nhost = ref.read(nhostProvider);

  @override
  void initState() {
    super.initState();
    firstSignIn();
  }

  void firstSignIn() async {
    await _nhost.auth.signInWithStoredCredentials().catchError((_) {});
    final newRoute = await _userController.firstSignedIn ? '/lists' : '/login';
    FlutterNativeSplash.remove();

    if (mounted) {
      router.go(newRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Uailist',
      theme: lightTheme,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }

<<<<<<< HEAD
  late final GoRouter router = GoRouter(
    initialLocation: '/',
=======
  late final GoRouter _router = GoRouter(
    initialLocation: '/lists',
>>>>>>> 15e0e35da385e3257f38b0786d5872d8765d842c
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const Scaffold(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return DashboardScaffold(page: child);
        },
        routes: [
<<<<<<< HEAD
          GoRoute(
            path: '/lists',
            builder: (context, state) {
              return const HomeScreen();
            },
            pageBuilder: (context, state) {
              return const SharedAxisTransitionPage(
                key: ValueKey('Home'),
                transitionDuration: Duration(seconds: 2),
                child: HomeScreen(),
              );
            },
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) {
              return const SharedAxisTransitionPage(
                key: ValueKey('Profile'),
                transitionDuration: Duration(seconds: 2),
                child: ProfileScreen(),
              );
            },
          ),
=======
          listRoute,
          profileRoute,
>>>>>>> 15e0e35da385e3257f38b0786d5872d8765d842c
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
