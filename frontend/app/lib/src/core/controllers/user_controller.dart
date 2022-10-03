import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/repositories/auth_repository.dart';
import 'package:uailist/src/screens/auth/auth_controller.dart';

final userController = ChangeNotifierProvider((ref) {
  final userController = UserController(
    ref.read(nhostAuthProvider),
    ref.read(databaseProvider),
  );

  return userController;
});

class UserController extends ChangeNotifier {
  final AuthRepository _authRepository;
  final AppDatabase _appDatabase;
  // final LocalUserRepository _localUserRepository;

  late final StreamSubscription<User?> _subscriptionUserLocal;
  StreamSubscription<User?>? _subscriptionUserAuthRepository;
  final _firstSignedInCompleter = Completer<bool>();

  User? _currentUser;

  /// Returns if the user is currently signed in
  bool get signedIn => _currentUser != null;

  /// Returns the current user signedIn, can't be null
  User get currentUser => _currentUser!;

  /// Returns the current user signedIn or null if not signedIn
  User? get nullableUser => _currentUser;

  Future<bool> get firstSignedIn => _firstSignedInCompleter.future;

  UserController(this._authRepository, this._appDatabase) {
    // Drift Local storage
    _subscriptionUserLocal =
        _appDatabase.authDAO.watchCurrentUser().listen(_setUser);

    _initAuthRepository();
  }

  // Set _currentUser with the user from localStorage
  Future<void> _setUser(User? user) async {
    _currentUser = user;
    notifyListeners();

    if (!_firstSignedInCompleter.isCompleted) {
      _firstSignedInCompleter.complete(_currentUser != null);
    }
  }

  Future<void> _initAuthRepository() async {
    await _authRepository.init();
    _authRepository.getCurrentUser().then(_saveUserInStorage);
    _subscriptionUserAuthRepository =
        _authRepository.watchCurrentUserAuth().listen(_saveUserInStorage);
  }

  // Set _currentUser with the user from authRepository
  Future<void> _saveUserInStorage(User? user) async {
    if (user != null) {
      await _appDatabase.authDAO.insertOrUpdateUser(user.toCompanion(true));
    } else {
      await signOut();
    }
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
    await _appDatabase.deleteEverything();
  }

  @override
  void dispose() {
    _subscriptionUserLocal.cancel();
    _subscriptionUserAuthRepository?.cancel();
    super.dispose();
  }
}
