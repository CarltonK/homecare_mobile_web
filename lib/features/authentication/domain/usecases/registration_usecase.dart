import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../entities/auth_entity.dart';
import '../repositories/auth_repository.dart';

class RegistrationUseCase {
  final AuthRepository repository;

  RegistrationUseCase(this.repository);

  Future<Either<Failure, AuthEntity>> call(String username, String password,
      {String? firstName, String? lastName}) {
    return repository.register(
      username,
      password,
      firstName ?? '',
      lastName ?? '',
    );
  }
}
