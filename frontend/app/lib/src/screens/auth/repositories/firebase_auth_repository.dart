import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/screens/auth/models/user_auth.dart';
import 'package:uailist/src/screens/auth/repositories/auth_repository.dart';

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
  Future<Either<Failure, UserAuth?>> loginUserWithEmailAndPassword(
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

      return right(UserAuth(
        id: result.user!.uid,
        email: result.user!.email!,
        name: result.user!.displayName,
      ));
    } catch (e) {
      print(e.toString());
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserAuth?>> signInWithGoogleToken(
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

      return right(UserAuth(
        id: result.user!.uid,
        email: result.user!.email!,
        name: result.user!.displayName,
      ));
    } catch (e) {
      print(e.toString());
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, UserAuth?>> registerInWithGoogleToken(
    String? accessToken,
    String? idToken,
  ) {
    return signInWithGoogleToken(accessToken, idToken);
  }

  @override
  Future<Either<Failure, UserAuth?>> registerUserWithEmailAndPassword(
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

      return right(UserAuth(
        id: result.user!.uid,
        email: result.user!.email!,
        name: result.user!.displayName,
      ));
    } catch (e) {
      print(e.toString());
      return left(const UnknownFailure());
    }
  }

  @override
  Future<Failure?> signOut() async {
    try {
      await _auth.signOut();
      return null;
    } catch (e) {
      return const UnknownFailure();
    }
  }
}
