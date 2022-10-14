import 'package:uailist/src/core/failures/failure.dart';

class EmailAlreadyUsedFailure extends Failure {
  const EmailAlreadyUsedFailure() : super('Esse e-mail já está registrado');
}

class WrongEmailAndPasswordFailure extends Failure {
  const WrongEmailAndPasswordFailure() : super('E-mail ou senha invalidos');
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure() : super('E-mail não encontrado');
}

class UserDisabledFailure extends Failure {
  const UserDisabledFailure() : super('User disabled');
}

class InvalidEmailFailure extends Failure {
  const InvalidEmailFailure() : super('E-mail invalido');
}
