import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:uailist/src/core/database/app_database.dart' as u;
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/failures/nhost_failures.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/core/repositories/auth_repository.dart';

class NhostAuthRepository extends AuthRepository {
  final NhostClient _client;

  NhostAuthRepository(this._client);

  StreamController<u.User?>? _currentUser;

  @override
  Future<void> init() async {
    try {
      await _client.auth.signInWithStoredCredentials();
    } catch (e) {}
  }

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
      final response = await _client.auth.signUp(
        email: email,
        password: password,
        displayName: displayName,
      );

      final user = response.user;
      if (user == null) {
        return left(const UnknownFailure());
      }

      return right(_mapUser(user)!);
    } on ApiException catch (e) {
      if (e.body is Map) {
        if (e.body.containsKey('error') &&
            e.body['error'] == 'email-already-in-use') {
          return left(const EmailAlreadyUsedFailure());
        }
      }
      return left(const UnknownFailure());
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
      avatarUrl: user.avatarUrl.toString(),
      displayName: user.displayName,
    );
  }

  @override
  Future<Failure?> deleteCurrentUser() async {
    try {
      await signOut();
      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
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
  }
}
