import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/failures/firebase_failures.dart';
import 'package:uailist/src/core/models/user_auth.dart';
import 'package:uailist/src/core/repositories/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth _auth;

  FirebaseAuthRepository(this._auth);

  @override
  Future<String?> getCurrentUserToken({bool refresh = false}) async {
    try {
      return await _auth.currentUser?.getIdToken(refresh);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<Either<Failure, UserAuth>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (result.user == null) {
        return left(const UnknownFailure());
      }

      return right(_mapFirebaseUser(result.user)!);
    } on FirebaseAuthException catch (e) {
      return left(_handleFirebaseFailure(e.code));
    } catch (e) {
      print(e.toString());
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserAuth>> signInWithGoogleToken(
    String? accessToken,
    String? idToken,
  ) async {
    try {
      final credential = GoogleAuthProvider.credential(
        accessToken: accessToken,
        idToken: idToken,
      );

      final result =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (result.user == null) {
        return left(const UnknownFailure());
      }

      return right(_mapFirebaseUser(result.user)!);
    } on FirebaseAuthException catch (e) {
      return left(_handleFirebaseFailure(e.code));
    } catch (e) {
      print(e.toString());
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserAuth>> registerInWithGoogleToken(
    String? accessToken,
    String? idToken,
  ) {
    return signInWithGoogleToken(accessToken, idToken);
  }

  @override
  Future<Either<Failure, UserAuth>> registerUserWithEmailAndPassword(
    String email,
    String password,
    String displayName,
  ) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (result.user == null) {
        return left(const UnknownFailure());
      }

      return right(_mapFirebaseUser(result.user)!);
    } on FirebaseAuthException catch (e) {
      return left(_handleFirebaseFailure(e.code));
    } catch (e) {
      print(e.toString());
      return left(const UnknownFailure());
    }
  }

  @override
  Stream<UserAuth?> watchCurrentUserAuth() {
    return _auth.userChanges().map(_mapFirebaseUser);
  }

  @override
  Future<Failure?> signOut() async {
    try {
      await _auth.signOut();
      return null;
    } on FirebaseAuthException catch (e) {
      return _handleFirebaseFailure(e.code);
    } catch (e) {
      return const UnknownFailure();
    }
  }

  UserAuth? _mapFirebaseUser(User? firebaseUser) {
    if (firebaseUser == null) {
      return null;
    }

    return UserAuth(
      id: firebaseUser.uid,
      email: firebaseUser.email!,
      name: firebaseUser.displayName,
      image: firebaseUser.photoURL,
    );
  }

  /// [https://firebase.google.com/docs/auth/admin/errors]
  Failure _handleFirebaseFailure(String errorCode) {
    switch (errorCode) {
      case 'email-already-in-use':
      case 'account-exists-with-different-credential':
        return const EmailAlreadyUsedFailure();
      case 'ERROR_WRONG_PASSWORD':
      case 'wrong-password':
        return const WrongEmailAndPasswordFailure();
      case 'ERROR_USER_NOT_FOUND':
      case 'user-not-found':
        return const UserNotFoundFailure();
      case 'ERROR_USER_DISABLED':
      case 'user-disabled':
        return const UserDisabledFailure();
      case 'ERROR_TOO_MANY_REQUESTS':
      case 'too-many-requests':
        return const TooManyRequestsFailure();
      case 'ERROR_OPERATION_NOT_ALLOWED':
      case 'operation-not-allowed':
        return const OperationNotAllowedFailure();
      case 'ERROR_INVALID_EMAIL':
      case 'invalid-email':
        return const InvalidEmailFailure();
      case 'invalid-verification-code':
      case 'missing-verification-code':
        return const InvalidSMSVerificationCodeFailure();
      case 'quota-exceeded':
        return const QuotaExceededFailure();
      default:
        return const UnknownFirebaseFailure();
    }
  }
}
