import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/auth_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, AuthEntity>> call(String username, String password) {
    return repository.authenticate(username, password);
  }
}
