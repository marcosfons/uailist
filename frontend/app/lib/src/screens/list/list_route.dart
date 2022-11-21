import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/list/list_screen.dart';
import 'package:uailist/src/screens/select_product_buy_list/select_product_buy_list_route.dart';

final editListRoute = GoRoute(
    path: 'new/:uuid',
    builder: (context, state) {
      print('PARAM ${state.params['uuid']}');
      return ListScreen(
        buyList: state.extra ?? state.params['uuid'],
      );
    },
    routes: [selectProductcBuyListRoute]);

final newListRoute = GoRoute(
    path: 'new',
    builder: (context, state) {
      return ListScreen(buyList: state.extra);
    },
    routes: [selectProductcBuyListRoute]);
