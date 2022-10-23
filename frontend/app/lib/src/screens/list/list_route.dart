import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/list/list_screen.dart';

final editListRoute = GoRoute(
  path: 'new/:uuid',
  builder: (context, state) {
    print('PARAM ${state.params['uuid']}');
    return ListScreen(
      buyList: state.extra ?? state.params['uuid'],
    );
  },
);

final newListRoute = GoRoute(
  path: 'new',
  builder: (context, state) {
    return ListScreen(buyList: state.extra);
  },
);
