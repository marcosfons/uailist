import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/services/hasura/hasura_client.dart';
import 'package:uailist/src/screens/products/products_service.dart';

final productsController = ChangeNotifierProvider((ref) {
  final controller = ProductsController(
    ProductsService(
      ref.read(hasuraClientProvider),
      ref.read(databaseProvider),
    ),
  );

  Timer synctimer = Timer.periodic(const Duration(seconds: 10), (timer) {
    print('Syncing');
    controller.sync();
  });

  ref.onDispose(() {
    synctimer.cancel();
    controller.dispose();
  });

  return controller;
});

class ProductsController extends ChangeNotifier {
  final ProductsService _productsService;

  ProductsController(this._productsService);

  final _productSearchController = StreamController<String>.broadcast();
  final bool _firstLoading = true;

  bool _loading = false;
  String? _error;

  bool get loading => _loading;
  String? get error => _error;

  Future<void> sync() {
    return _productsService.uploadNotSyncedProducts();
  }

  void changeSearch(String text) {
    _productSearchController.add(text);
  }

  Future<void> loadProducts() async {
    if (!_firstLoading) {
      _loading = true;
      _error = null;
      notifyListeners();
    }

    final result = await _productsService.loadProducts();
    _loading = false;

    if (result != null) {
      _error = result.message;
    } else {
      _error = null;
    }
    notifyListeners();
  }

  // Returns the error if any
  Future<String?> createProduct(ProductsCompanion newProduct) async {
    final response = await _productsService.createProduct(newProduct);
    return response?.message;
  }

  Stream<List<Product>> productsList() {
    final text =
        _productsService.productsSearchStream(_productSearchController.stream);
    scheduleMicrotask(() => _productSearchController.add(''));
    return text;
  }
}
