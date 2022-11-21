import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/select_product_buy_list/select_product_buy_list_screen.dart';

final selectProductcBuyListRoute = GoRoute(
  path: 'selectProduct',
  builder: (context, state) {
    return SelectProductcBuyListScreen(
      callback: state.extra as Function(List),
    );
  },
);
