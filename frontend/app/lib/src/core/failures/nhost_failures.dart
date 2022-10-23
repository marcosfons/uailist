import 'package:uailist/src/core/failures/failure.dart';

class EmailAlreadyUsedFailure extends Failure {
  const EmailAlreadyUsedFailure() : super('Email já cadastrado');
}

class WrongEmailAndPasswordFailure extends Failure {
  const WrongEmailAndPasswordFailure() : super('Email ou senha incorretos');
}

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure() : super('Email não encontrado');
}

class UserDisabledFailure extends Failure {
  const UserDisabledFailure() : super('User disabled');
}

class InvalidEmailFailure extends Failure {
  const InvalidEmailFailure() : super('E-mail inválido');
}
