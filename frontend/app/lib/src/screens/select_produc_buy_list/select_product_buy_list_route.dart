import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/select_produc_buy_list/select_produc_buy_list_screen.dart';

final selectProductcBuyListRoute = GoRoute(
  path: 'selectProdut',
  builder: (context, state) {
    return SelectProductcBuyListScreen(
      callback: state.extra as Function(List),
    );
  },
);
