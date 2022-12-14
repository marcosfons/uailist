import 'package:dartz/dartz.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/failures/failure.dart';
// import 'package:uailist/src/core/models/user.dart';

abstract class AuthRepository {
  /// An optional function to run every time to initialize the auth service
  Future<void> init() async {}

  /// Login the user using it's already registered email and password
  Future<Either<Failure, User>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  /// Login the user using Google OAuth tokens
  Future<Either<Failure, User>> signInWithGoogleToken(
    String? accessToken,
    String? idToken,
  );

  /// Register a new user with the given email and password and name
  Future<Either<Failure, User>> registerUserWithEmailAndPassword(
    String email,
    String password,
    String displayName,
  );

  /// Register a new user with the given Google OAuth tokens
  Future<Either<Failure, User>> registerInWithGoogleToken(
    String? accessToken,
    String? idToken,
  );

  /// Deletes the current user and signOut from the account
  Future<Failure?> deleteCurrentUser();

  /// Returns the currentUser or null if it's not signedIn
  Future<User?> getCurrentUser();

  /// Returns the user JWT token.
  /// If the result is null some error occurred or the user is not signedIn
  ///
  /// If refresh is true a new refreshToken is requested, useful for refreshing
  /// user claims
  Future<String?> getCurrentUserToken({bool refresh = false});

  /// Watches the currently signedIn user or null if not signedIn
  Stream<User?> watchCurrentUserAuth();

  /// SignOut the user if failure is not null some error occurred
  Future<Failure?> signOut();

  /// Free resources
  Future<void> dispose();
}
