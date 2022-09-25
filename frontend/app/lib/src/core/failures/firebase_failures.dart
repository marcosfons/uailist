import 'package:uailist/src/core/failures/failure.dart';

class EmailAlreadyUsedFailure extends Failure {
  const EmailAlreadyUsedFailure()
      : super('Email already used with a different authentication method');
}

class WrongEmailAndPasswordFailure extends Failure {
  const WrongEmailAndPasswordFailure()
      : super('Wrong email/password combination');
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure() : super('No user found with this email');
}

class UserDisabledFailure extends Failure {
  const UserDisabledFailure() : super('User disabled');
}

class TooManyRequestsFailure extends Failure {
  const TooManyRequestsFailure() : super('Too many requests');
}

class OperationNotAllowedFailure extends Failure {
  const OperationNotAllowedFailure()
      : super('Server error, please try again later');
}

class InvalidEmailFailure extends Failure {
  const InvalidEmailFailure() : super('Email address is invalid');
}

class UnknownFirebaseFailure extends Failure {
  const UnknownFirebaseFailure()
      : super('An error has occurred. Please try again later');
}

class MaxReloadTokenAttemptsExceededFailure extends Failure {
  const MaxReloadTokenAttemptsExceededFailure()
      : super('Max reload token attempts exceeded');
}

class InvalidSMSVerificationCodeFailure extends Failure {
  const InvalidSMSVerificationCodeFailure()
      : super('Invalid SMS verification code');
}

class QuotaExceededFailure extends Failure {
  const QuotaExceededFailure() : super('Quota exceeded for this operation');
}
