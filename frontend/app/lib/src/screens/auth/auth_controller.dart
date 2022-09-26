import 'package:flutter/foundation.dart';
import 'package:uailist/src/core/repositories/auth_repository.dart';

class AuthController {
  final AuthRepository _authRepository;

  String _email = '';
  String _password = '';

  final ValueNotifier<String?> _errorNotifier = ValueNotifier(null);

  AuthController(this._authRepository);

  void changeEmail(String email) => _email = email;
  void changePassword(String password) => _password = password;

  Future<void> signInWithEmailAndPassword() async {
    _errorNotifier.value = null;
    final result =
        await _authRepository.signInWithEmailAndPassword(_email, _password);

    result.fold(
      (left) => _errorNotifier.value = left.message,
      (data) {
        _errorNotifier.value = null;
        print(data.toString());
      },
    );
  }

  void dispose() {
    _errorNotifier.dispose();
  }
}
