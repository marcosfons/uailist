import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/models/user.dart';
import 'package:uailist/src/core/repositories/auth_repository.dart';
import 'package:uailist/src/screens/auth/auth_controller.dart';

final userController = Provider.autoDispose((ref) {
  final userController = UserController(
    ref.read(nhostAuthProvider),
  );

  ref.onDispose(userController.dispose);

  return userController;
});

class UserController {
  final AuthRepository _authRepository;
  // final LocalUserRepository _localUserRepository;

  late final StreamSubscription<User?> _subscriptionUserAuthData;
  final _firstSignedInCompleter = Completer<bool>();

  User? _currentUser;

  /// Returns if the user is currently signed in
  bool get signedIn => _currentUser != null;

  /// Returns the current user signedIn, can't be null
  User get currentUser => _currentUser!;

  /// Returns the current user signedIn or null if not signedIn
  User? get nullableUser => _currentUser;

  Future<bool> get firstSignedIn => _firstSignedInCompleter.future;

  UserController(this._authRepository) {
    _authRepository.getCurrentUser().then(_setUser);
    _subscriptionUserAuthData =
        _authRepository.watchCurrentUserAuth().listen(_setUser);
  }

  void _setUser(User? user) {
    _currentUser = user;

    if (!_firstSignedInCompleter.isCompleted) {
      _firstSignedInCompleter.complete(_currentUser != null);
    }
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
  }

  void dispose() {
    _subscriptionUserAuthData.cancel();
  }
}
