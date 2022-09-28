import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/repositories/auth_repository.dart';
import 'package:uailist/src/core/repositories/firebase_auth_repository.dart';
import 'package:uailist/src/core/repositories/google_sign_in_repository.dart';

import 'models/user_auth.dart';

final firebaseAuthProvider = Provider<AuthRepository>(
    (ref) => FirebaseAuthRepository(FirebaseAuth.instance));

final authController = Provider.autoDispose((ref) {
  return AuthController(
    ref.read(firebaseAuthProvider),
    GoogleSignInRepository(),
  );
});

class AuthController {
  final GoogleSignInRepository _googleSignInRepository;
  final AuthRepository _authRepository;

  String _email = '';
  String _password = '';

  final ValueNotifier<String?> _errorNotifier = ValueNotifier(null);

  AuthController(this._authRepository, this._googleSignInRepository);

  void changeEmail(String email) => _email = email;
  void changePassword(String password) => _password = password;

  ValueListenable<String?> get errorListener => _errorNotifier;

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

  Future<void> signInWithGoogle() async {
    try {
      _errorNotifier.value = null;

      final googleResult = await _googleSignInRepository.signInWithGoogle();

      final result = googleResult.fold<Future<Either<Failure, UserAuth>>>(
        (failure) async => left<Failure, UserAuth>(failure),
        (credential) async {
          return await _authRepository.signInWithGoogleToken(
            credential.accessToken,
            credential.idToken,
          );
        },
      );

      (await result).fold(
        (left) => _errorNotifier.value = left.message,
        (data) {
          _errorNotifier.value = null;
          print(data.name);
          print(data.email);
          print(data.image);
          print(data.id);
          print(data.toString());
        },
      );
    } catch (e) {
      _errorNotifier.value = const UnknownFailure().message;
    }
  }

  void dispose() {
    _errorNotifier.dispose();
  }
}
