import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/new_supermarkets/new_supermarket.dart';

final newSupermarketsRoute = GoRoute(
  path: 'new',
  builder: (context, state) {
    return const NewSupermarketScreen();
  },
);
