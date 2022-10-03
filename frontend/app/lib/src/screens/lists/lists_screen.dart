import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/screens/lists/lists_controller.dart';
import 'package:uailist/src/screens/lists/widgets/list_card.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ListsScreen extends ConsumerWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(listsController);
    final themeData = Theme.of(context);
    final DateTime date = DateTime.now();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainScreenTitle(
              title: 'Minhas listas',
              centered: false,
              trailing: IconButton(
                iconSize: 30,
                icon: Icon(
                  Icons.add,
                  color: themeData.colorScheme.primary,
                ),
                onPressed: () {
                  GoRouter.of(context).push('/lists/new');
                },
              ),
            ),
            // Expanded(
            //   child: StreamBuilder<List<BuyListWithProducts>>(
            //     stream: controller.buyLists,
            //     builder: (context, snapshot) {
            //       if (snapshot.data == null) {
            //         return const SizedBox();
            //       }
            //       return ListView.builder(
            //         itemCount: snapshot.data?.length ?? 0,
            //         itemBuilder: (BuildContext context, int index) {
            //           return ListCard(
            //             buyList: snapshot.data![index],
            //             onPressed: () {},
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
            ListCard(
              onPressed: () {},
              itemsTaken: 5,
              // progress: 14.8,
              totalItems: 18,
              listDate: date,
              listName: 'Supermercado',
            ),
            ListCard(
              onPressed: () {},
              // progress: 5,
              itemsTaken: 12,
              totalItems: 18,
              listDate: DateTime.now().subtract(const Duration(days: 15)),
              listName: 'Supermercado',
            ),
            ListCard(
              onPressed: () {},
              // progress: 9,
              itemsTaken: 18,
              totalItems: 18,
              listDate: DateTime.now().subtract(const Duration(days: 30)),
              listName: 'Supermercado',
            ),
          ],
        ),
      ),
    );
  }
}
