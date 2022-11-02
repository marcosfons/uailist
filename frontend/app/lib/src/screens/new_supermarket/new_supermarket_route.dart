import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/new_supermarket/new_supermarket_screen.dart';

final newSupermarketsRoute = GoRoute(
  path: 'new',
  builder: (context, state) {
    return const NewSupermarketScreen();
  },
);
