import 'package:go_router/go_router.dart';
import 'package:uailist/src/screens/new_list/new_list.dart';

final newListRoute = GoRoute(
  path: 'new',
  builder: (context, state) {
    return const NewList();
  },
);
