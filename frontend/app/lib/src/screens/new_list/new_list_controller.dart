import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';

final newListController = ChangeNotifierProvider((ref) {
  return NewListController(
    ref.read(databaseProvider),
  );
});

class NewListController extends ChangeNotifier {
  final AppDatabase _appDatabase;

  NewListController(this._appDatabase);

  BuyListsCompanion _currentBuyList = BuyListsCompanion.insert(name: '');

  Future<void> save() async {
    await _appDatabase.buyListDAO.createBuyList(_currentBuyList);
  }

  void changeBuyListName(String buyListName) {
    print(_currentBuyList.uuid);
    _currentBuyList = _currentBuyList.copyWith(name: Value(buyListName));
    notifyListeners();
  }

  void addProductBuyList(ProductBuyList productBuyList) {}
}
