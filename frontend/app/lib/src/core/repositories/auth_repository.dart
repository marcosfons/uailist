import 'package:dartz/dartz.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/models/user_auth.dart';

abstract class AuthRepository {
  /// Login the user using it's already registered email and password
  Future<Either<Failure, UserAuth>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  /// Login the user using Google OAuth tokens
  Future<Either<Failure, UserAuth>> signInWithGoogleToken(
    String? accessToken,
    String? idToken,
  );

  /// TODO(marcosfons): Check if here it will use the userName
  /// Register a new user with the given email and password and name
  Future<Either<Failure, UserAuth>> registerUserWithEmailAndPassword(
    String email,
    String password,
    String displayName,
  );

  /// Register a new user with the given Google OAuth tokens
  Future<Either<Failure, UserAuth>> registerInWithGoogleToken(
    String? accessToken,
    String? idToken,
  );

  /// Returns the user JWT token.
  /// If the result is null some error occurred or the user is not signedIn
  ///
  /// If refresh is true a new refreshToken is requested, useful for refreshing
  /// user claims
  Future<String?> getCurrentUserToken({bool refresh = false});

  Stream<UserAuth?> watchCurrentUserAuth();

  /// SignOut the user if failure is not null some error occurred
  Future<Failure?> signOut();
}
