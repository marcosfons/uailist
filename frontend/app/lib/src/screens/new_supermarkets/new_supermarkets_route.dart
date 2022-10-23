import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/new_supermarkets/new_supermarkets.dart';

final newSupermarketsRoute = GoRoute(
  path: 'new',
  builder: (context, state) {
    return const NewSupermarkets();
  },
);
