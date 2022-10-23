import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/entities/buy_list_with_products.dart';
import 'package:uailist/src/screens/lists/lists_controller.dart';
import 'package:uailist/src/screens/lists/widgets/list_card.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ListsScreen extends ConsumerWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(listsController);
    final themeData = Theme.of(context);

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
                  GoRouter.of(context).push('/lists/new/');
                },
              ),
            ),
            Expanded(
              child: StreamBuilder<List<BuyListWithProducts>>(
                stream: controller.buyLists,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return const SizedBox();
                  }
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListCard(
                        buyList: snapshot.data[index],
                        onPressed: () {
                          GoRouter.of(context).push(
                            '/lists/new/',
                            extra: snapshot.data[index],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
