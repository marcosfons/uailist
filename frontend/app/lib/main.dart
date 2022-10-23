import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:uailist/src/core/controllers/user_controller.dart';
import 'package:uailist/src/core/themes/light_theme.dart';
import 'package:uailist/src/screens/auth/auth_route.dart';
import 'package:uailist/src/screens/lists/lists_route.dart';
import 'package:uailist/src/screens/products/products_route.dart';
import 'package:uailist/src/screens/profile/profile_route.dart';
import 'package:uailist/src/screens/supermarkets/supermarkets_route.dart';
import 'package:uailist/src/shared/widgets/dashboard/dashboard_item.dart';
import 'package:uailist/src/shared/widgets/dashboard/dashboard_scaffold.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Logger.level = kDebugMode ? Level.verbose : Level.info;

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

  @override
  void initState() {
    super.initState();
    firstSignIn();
  }

  void firstSignIn() async {
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

  late final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const Scaffold(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return DashboardScaffold(
            page: child,
            items: const [
              DashboardItem(
                path: '/lists',
                name: 'Listas',
                icon: Icons.home,
              ),
              DashboardItem(
                path: '/supermarkets',
                name: 'Supermercados',
                icon: FontAwesomeIcons.cartShopping,
              ),
              DashboardItem(
                path: '/products',
                name: 'Listas',
                icon: FontAwesomeIcons.cartShopping,
              ),
              DashboardItem(
                path: '/profile',
                name: 'Perfil',
                icon: Icons.account_circle,
              )
            ],
          );
        },
        routes: [
          listsRoute,
          supermarketsRoute,
          productsRoute,
          profileRoute,
        ],
      ),
      authRoute,
    ],
  );
}
