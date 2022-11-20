import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/products/products_controller.dart';
import 'package:uailist/src/screens/products/widget/product_card.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ProductsScreen extends StatefulHookConsumerWidget {
  const ProductsScreen({super.key});

  @override
  ProductsScreenState createState() => ProductsScreenState();
}

class ProductsScreenState extends ConsumerState<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(productsController).loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final controller = ref.watch(productsController);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainScreenTitle(
              title: 'Produtos',
              centered: false,
              trailing: IconButton(
                iconSize: 30,
                icon: Icon(
                  Icons.add,
                  color: themeData.colorScheme.primary,
                ),
                onPressed: () {
                  GoRouter.of(context).push('/products/new');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 10, right: 15, bottom: 10),
              child: TextField(
                onChanged: controller.changeSearch,
                //controller: editingController,
                decoration: const InputDecoration(
                    labelText: 'Procurar Produto',
                    hintText: 'Informe o nome do Produto',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: StreamBuilder<List<Product>>(
                stream: controller.productsList(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return RefreshIndicator(
                      onRefresh: controller.loadProducts,
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProductCard(
                            product: snapshot.data![index],
                            onTap: () {
                              GoRouter.of(context).push('/products/product',
                                  extra: snapshot.data![index]);
                            },
                          );
                        },
                      ),
                    );
                  }

                  if (controller.error != null) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.error!,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        FutureLoadElevatedButton(
                          onPressed: controller.loadProducts,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 4),
                            child: Text(
                              'Tentar novamente',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    );
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
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
