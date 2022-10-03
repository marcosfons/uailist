import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/repositories/auth_repository.dart';
import 'package:uailist/src/core/repositories/nhost_auth_repository.dart';

final nhostProvider = Provider<NhostClient>((ref) {
  final database = ref.read(databaseProvider);
  return NhostClient(
    backendUrl: 'https://xjdqpodncbmiwuowptdo.nhost.run/',
    authStore: database.authDAO,
  );
});

final nhostAuthProvider = Provider<NhostAuthRepository>(
  (ref) => NhostAuthRepository(ref.read(nhostProvider)),
);

final authController = Provider.autoDispose((ref) {
  return AuthController(
    ref.read(nhostAuthProvider),
  );
});

class AuthController {
  final AuthRepository _authRepository;

  String _email = '';
  String _password = '';
  String _name = '';

  final ValueNotifier<String?> _errorNotifier = ValueNotifier(null);

  AuthController(this._authRepository);

  String get name => _name;
  String get email => _email;
  String get password => _password;

  void changeName(String name) => _name = name;
  void changeEmail(String email) => _email = email;
  void changePassword(String password) => _password = password;

  ValueListenable<String?> get errorListener => _errorNotifier;

  Future<bool> signInWithEmailAndPassword() async {
    _errorNotifier.value = null;
    final result =
        await _authRepository.signInWithEmailAndPassword(_email, _password);

    return result.fold(
      (left) {
        _errorNotifier.value = left.message;
        return false;
      },
      (data) {
        return true;
      },
    );
  }

  Future<bool> registerWithEmailAndPassword() async {
    _errorNotifier.value = null;
    final result = await _authRepository.registerUserWithEmailAndPassword(
      _email,
      _password,
      _name,
    );

    return result.fold(
      (left) {
        _errorNotifier.value = left.message;
        return false;
      },
      (data) {
        return true;
      },
    );
  }

  // Future<void> signInWithGoogle() async {
  //   try {
  //     _errorNotifier.value = null;
  //     // await GoogleSignIn().disconnect();
  //     await GoogleSignIn().signOut();
  //     await _authRepository.signOut();
  //     await Future.delayed(const Duration(seconds: 1));
  //     final googleResult = await _googleSignInRepository.signInWithGoogle();
  //     print('Passou do google');

  //     final result = googleResult.fold<Future<Either<Failure, UserAuth>>>(
  //       (failure) async => left<Failure, UserAuth>(failure),
  //       (credential) async {
  //         return await _authRepository.signInWithGoogleToken(
  //           credential.accessToken,
  //           credential.idToken,
  //         );
  //       },
  //     );

  //     (await result).fold(
  //       (left) => _errorNotifier.value = left.message,
  //       (data) {
  //         _errorNotifier.value = null;
  //         print(data.name);
  //         print(data.email);
  //         print(data.image);
  //         print(data.id);
  //         print(data.toString());
  //       },
  //     );
  //   } catch (e) {
  //     _errorNotifier.value = const UnknownFailure().message;
  //   }
  // }

  void dispose() {
    _errorNotifier.dispose();
  }
}
