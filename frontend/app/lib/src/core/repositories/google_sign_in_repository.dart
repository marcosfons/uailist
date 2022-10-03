import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';

class GoogleSignInRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<Either<Failure, GoogleSignInAuthentication>> signInWithGoogle() async {
    try {
      final googleResult = await _googleSignIn.signIn();
      final authenticationResult = await googleResult?.authentication;

      if (authenticationResult == null) {
        return left(const UnknownFailure());
      }

      return right(authenticationResult);
    } catch (e) {
      getLogger().e('unknown_google_signin_error', e);
      return left(const UnknownFailure());
    }
  }
}
