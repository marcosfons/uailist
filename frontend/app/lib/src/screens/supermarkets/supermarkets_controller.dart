import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/services/hasura/hasura_client.dart';
import 'package:uailist/src/screens/supermarkets/supermarkets_service.dart';

final supermarketController = ChangeNotifierProvider((ref) {
  final controller = SupermarketsController(
    SupermarketsService(
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

class SupermarketsController extends ChangeNotifier {
  final SupermarketsService _supermarketsService;

  SupermarketsController(this._supermarketsService);

  final bool _firstLoading = true;

  bool _loading = false;
  String? _error;

  bool get loading => _loading;
  String? get error => _error;

  Future<void> sync() {
    return _supermarketsService.uploadNotSyncedSupermarkets();
  }

  Future<void> loadSupermarkets() async {
    if (!_firstLoading) {
      _loading = true;
      _error = null;
      notifyListeners();
    }

    final result = await _supermarketsService.loadSupermarkets();
    _loading = false;

    if (result != null) {
      _error = result.message;
    } else {
      _error = null;
    }
    notifyListeners();
  }

  // Returns the error if any
  Future<String?> createSupermarket(
      SupermarketsCompanion newSupermarket) async {
    final response =
        await _supermarketsService.createSupermarket(newSupermarket);
    return response?.message;
  }

  Stream<List<Supermarket>> supermarketsList() {
    return _supermarketsService.supermarketsStream();
  }
}
