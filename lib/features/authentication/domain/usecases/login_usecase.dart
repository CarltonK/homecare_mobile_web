import 'package:dartz/dartz.dart';

import '../../../features.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<Either<ResponseModel, AuthEntity>> call(LoginRequest data) {
    return repository.authenticate(data);
  }
}
