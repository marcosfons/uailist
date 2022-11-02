import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/new_product/new_product_screen.dart';

final newProductRoute = GoRoute(
  path: 'new',
  builder: (context, state) {
    return const NewProductScreen();
  },
);
