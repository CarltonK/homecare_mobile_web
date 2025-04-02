import 'package:dartz/dartz.dart';

import '../../../features.dart';

class RegistrationUseCase {
  final AuthRepository repository;

  RegistrationUseCase(this.repository);

  Future<Either<ResponseModel, AuthEntity>> call(
      String username, String password,
      {String? firstName, String? lastName}) {
    return repository.register(
      username,
      password,
      firstName ?? '',
      lastName ?? '',
    );
  }
}
