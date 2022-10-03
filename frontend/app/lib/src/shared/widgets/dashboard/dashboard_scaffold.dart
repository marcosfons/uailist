import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/shared/widgets/dashboard/dashboard_item.dart';

class DashboardScaffold extends StatelessWidget {
  const DashboardScaffold({super.key, required this.page, required this.items});

  final Widget page;
  final List<DashboardItem> items;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    int index = items.indexWhere(
      (item) => item.compareRoutePath(router.location, item.path),
    );
    if (index == -1) {
      index = 0;
    }

    return Scaffold(
      body: page,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (newIndex) {
          if (newIndex != index) {
            router.go(items[newIndex].path);
          }
        },
        items: items.map(
          (item) {
            return BottomNavigationBarItem(
              icon: item.iconWidget ?? Icon(item.icon),
              label: item.name,
            );
          },
        ).toList(),
      ),
    );
  }
}
