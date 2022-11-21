import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/list/list_controller.dart';
import 'package:uailist/src/screens/new_list/widgets/product_card.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ListScreen extends StatefulHookConsumerWidget {
  const ListScreen({super.key, required this.buyList});

  final dynamic buyList;

  @override
  ListScreenState createState() => ListScreenState();
}

class ListScreenState extends ConsumerState<ListScreen> {
  @override
  void initState() {
    super.initState();
    final controller = ref.read(listController);
    controller.setBuyList(widget.buyList);
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final controller = ref.watch(listController);

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 0, bottom: 0),
            child: MainScreenTitle(
              leading: const BackButton(),
              titleWidget: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Insira o nome da lista',
                  filled: false,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 32,
                  color: Color(0xff717171),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
                initialValue: controller.buyList?.buyList.name,
                onChanged: (String newName) {
                  controller.changeBuyListName(newName);
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //controller.addProductBuyList();
              print(GoRouter.of(context).location);
              GoRouter.of(context).go('/lists/new/selectProduct',
                  extra: (products) {
                if (products is Set<Product>) {
                  for (var product in products) {
                    controller.addProductBuyList(product);
                  }
                } else if (products is List<Product>) {
                  for (var product in products) {
                    controller.addProductBuyList(product);
                  }
                }
              });
            },
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 18)),
            child: const Text('Adicionar produto'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.buyList?.products.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  product: controller.buyList!.products[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
