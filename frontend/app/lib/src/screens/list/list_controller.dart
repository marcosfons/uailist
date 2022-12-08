import 'dart:async';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/database/entities/buy_list_with_products.dart';
import 'package:uuid/uuid.dart';

final listController = ChangeNotifierProvider.autoDispose((ref) {
  return ListController(
    ref.read(databaseProvider),
  );
});

class ListController extends ChangeNotifier {
  final AppDatabase _appDatabase;

  ListController(this._appDatabase);

  StreamSubscription<BuyListWithProducts?>? _buyListSubscription;

  String? _buyListUuid;
  BuyListWithProducts? _currentBuyList;

  bool get isLoading => _currentBuyList == null;
  BuyListWithProducts? get buyList => _currentBuyList;

  Future<void> setBuyList(dynamic buyList) async {
    if (_buyListSubscription != null) {
      return;
    }
    if (buyList == null) {
      final uuid = const Uuid().v4();
      await _appDatabase.buyListDAO.createBuyList(BuyListsCompanion.insert(
        uuid: Value(uuid),
        name: '',
      ));
      _initSubscription(uuid);
    } else if (buyList is String) {
      _initSubscription(buyList);
    } else if (buyList is BuyList) {
      _initSubscription(buyList.uuid);
    } else if (buyList is BuyListWithProducts) {
      _currentBuyList = buyList;
      // notifyListeners();
      _initSubscription(buyList.buyList.uuid);
    }
  }

  void _initSubscription(String buyListUuid) {
    _buyListUuid = buyListUuid;
    _buyListSubscription =
        _appDatabase.buyListDAO.watchBuyList(buyListUuid).listen((buyList) {
      _currentBuyList = buyList;
      notifyListeners();
    });
  }

  Future<void> save() async {
    if (_currentBuyList != null) {
      await _appDatabase.buyListDAO.editBuyListWithProducts(_currentBuyList!);
    }
  }

  Future<void> delete() async {
    if (_currentBuyList != null) {
      await _appDatabase.buyListDAO
          .removeBuyList(_currentBuyList!.buyList.uuid);
    }
  }

  void changeBuyListName(String buyListName) {
    _currentBuyList = _currentBuyList?.copyWith(
      buyList: _currentBuyList?.buyList.copyWith(name: buyListName),
    );
    save();
    notifyListeners();
  }

  void addProductBuyList(Product product) async {
    await _appDatabase.buyListDAO.addProductToBuyList(
      ProductsBuyListCompanion.insert(
        buyListUuid: _currentBuyList!.buyList.uuid,
        name: product.name,
        productUuid: product.uuid,
        quantity: const Value(1),
        bought: const Value(false),
      ),
    );
  }

  void updateProductBuyListBought(
    ProductBuyList product,
    bool? bought,
  ) async {
    await _appDatabase.buyListDAO.updateProductBuyList(
      product.uuid,
      ProductsBuyListCompanion(
        bought: Value(bought ?? false),
        buyListUuid: Value(_currentBuyList!.buyList.uuid),
      ),
    );
  }

  void updateProductBuyListQuantity(
    ProductBuyList product,
    int? quantity,
  ) async {
    await _appDatabase.buyListDAO.updateProductBuyList(
      product.uuid,
      ProductsBuyListCompanion(
        quantity: Value(quantity ?? 1),
        buyListUuid: Value(_currentBuyList!.buyList.uuid),
      ),
    );
  }

  void removeProductBuyList(ProductBuyList product) async {
    await _appDatabase.buyListDAO.removeProductOfBuyList(product);
  }

  @override
  void dispose() async {
    await _buyListSubscription?.cancel();
    super.dispose();
  }
}
