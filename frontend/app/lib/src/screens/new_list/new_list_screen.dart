import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/screens/new_list/new_list_controller.dart';

class NewListScreen extends ConsumerWidget {
  const NewListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = Theme.of(context);
    final controller = ref.read(newListController);

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 35, right: 0, bottom: 0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Nome da lista',
                    ),
                    onChanged: (String newName) {
                      controller.changeBuyListName(newName);
                    },
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.save();
                  },
                  icon: const Icon(Icons.save),
                )
              ],
            ),
          ),
          // Padding(
          //   padding:
          //       const EdgeInsets.only(left: 10, top: 35, right: 0, bottom: 0),
          //   child: Row(
          //     children: [
          //       IconButton(
          //         iconSize: 25,
          //         icon: Icon(
          //           Icons.arrow_back_ios,
          //           color: themeData.colorScheme.primary,
          //         ),
          //         onPressed: () {
          //           GoRouter.of(context).go('/lists');
          //         },
          //       ),
          //       const Expanded(
          //         child: TextField(
          //           scribbleEnabled: true,
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          const Text(
            'Nova Lista',
            style: TextStyle(
              color: Color(0xff717171),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          // const ProductCard(),
          // const ProductCard(),
          // const ProductCard(),
        ],
      ),
    );
  }
}
