import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/screens/products/products_controller.dart';

class NewProductScreen extends StatefulHookConsumerWidget {
  const NewProductScreen({super.key});

  @override
  NewProductScreenState createState() => NewProductScreenState();
}

class NewProductScreenState extends ConsumerState<NewProductScreen> {
  late final _controller = ref.read(productsController);

  ProductsCompanion newProduct = ProductsCompanion(
    synced: const Value(false),
    updatedAt: Value(DateTime.now()),
    createdAt: Value(DateTime.now()),
  );

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  iconSize: 20,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: themeData.colorScheme.primary,
                  ),
                  onPressed: () {
                    GoRouter.of(context).go('/products');
                  },
                ),
              ],
            ),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: null,
                  ),
                  Icon(Icons.photo_camera, size: 25),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Nome'),
                onChanged: (value) {
                  newProduct = newProduct.copyWith(name: Value(value));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 0, right: 15, bottom: 15),
              child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Marca'),
                  onChanged: (value) {
                    newProduct = newProduct.copyWith(brand: Value(value));
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 0, right: 15, bottom: 30),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Peso'),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9\.]'))
                ],
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    newProduct =
                        newProduct.copyWith(weight: Value(double.parse(value)));
                  } else {
                    newProduct =
                        newProduct.copyWith(weight: const Value.absent());
                  }
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  _controller.createProduct(newProduct);
                  GoRouter.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeData.colorScheme.primary,
                  fixedSize: const Size(150, 50),
                ),
                child: const Text(
                  'Enviar',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
