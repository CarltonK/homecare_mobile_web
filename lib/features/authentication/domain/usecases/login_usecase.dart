import 'package:dartz/dartz.dart';

import '../../../features.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<Either<ResponseModel, AuthEntity>> call(
      String username, String password) {
    return repository.authenticate(username, password);
  }
}
