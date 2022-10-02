import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/failures/firebase_failures.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/core/models/user.dart' as u;
import 'package:uailist/src/core/repositories/auth_repository.dart';

class NhostAuthRepository extends AuthRepository {
  final NhostClient _client;

  NhostAuthRepository(this._client);

  StreamController<u.User?>? _currentUser;

  @override
  Future<String?> getCurrentUserToken({bool refresh = false}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, u.User>> registerInWithGoogleToken(
    String? accessToken,
    String? idToken,
  ) async {
    // _client.auth.signInWithRefreshToken(refreshToken).then((value) => value.)
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, u.User>> registerUserWithEmailAndPassword(
    String email,
    String password,
    String displayName,
  ) async {
    try {
      // AuthClient().
      final response = await _client.auth.signUp(
        email: email,
        password: password,
        displayName: displayName,
      );
      // response.session
// response.session
      final user = response.user;
      if (user == null) {
        return left(const UnknownFailure());
      }

      return right(_mapUser(user)!);
    } catch (e) {
      getLogger().e('api_register_error', e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, u.User>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final response = await _client.auth.signInEmailPassword(
        email: email,
        password: password,
      );

      final user = response.user;
      if (user == null) {
        return left(const UnknownFailure());
      }

      return right(_mapUser(user)!);
    } on ApiException catch (e) {
      if (e.body is Map) {
        if (e.body.containsKey('error') &&
            e.body['error'] == 'invalid-email-password') {
          return left(const WrongEmailAndPasswordFailure());
        }
      }
      return left(const UnknownFailure());
    } catch (e) {
      getLogger().e('unknown_signing_in_error', e);
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, u.User>> signInWithGoogleToken(
    String? accessToken,
    String? idToken,
  ) async {
    throw UnimplementedError();
    // try {
    //   final response = await _client.auth.completeOAuthProviderSignIn(
    //     Uri(queryParameters: {refreshTokenQueryParamName: idToken}),
    //   );

    //   print(_client.auth.currentUser);
    //   return left(const UnknownFailure());
    // } on ApiException catch (e, st) {
    //   print('API EXCEPTION');
    //   debugPrint(e.toString());

    //   for (int i = 0; i < e.toString().length; i += 500) {
    //     print(e.toString().substring(i, i + 500));
    //   }

    //   print(st.toString());
    //   return left(const UnknownFailure());
    // } catch (e, st) {
    //   print(e.toString());
    //   print(st.toString());
    //   return left(const UnknownFailure());
    // }
  }

  @override
  Future<Failure?> signOut() async {
    try {
      await _client.auth.signOut();
      return null;
    } catch (e) {
      return const UnknownFailure();
    }
  }

  u.User? _mapUser(User? user) {
    if (user == null) {
      return null;
    }

    return u.User(
      email: user.email ?? '',
      id: user.id,
      image: user.avatarUrl.toString(),
      name: user.displayName,
    );
  }

  @override
  Future<u.User?> getCurrentUser() async {
    return _mapUser(_client.auth.currentUser);
  }

  @override
  Stream<u.User?> watchCurrentUserAuth() {
    if (_currentUser == null) {
      _currentUser = StreamController.broadcast();
      _client.auth.addAuthStateChangedCallback((authenticationState) {
        _currentUser!.add(_mapUser(_client.auth.currentUser));
      });
    }
    _currentUser!.add(_mapUser(_client.auth.currentUser));

    return _currentUser!.stream;
  }

  @override
  Future<void> dispose() async {
    await _currentUser?.close();
    // _client.auth.close();
  }
}
