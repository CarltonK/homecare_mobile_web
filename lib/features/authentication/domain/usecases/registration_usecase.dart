import 'package:dartz/dartz.dart';

import '../../../features.dart';

class RegistrationUseCase {
  final AuthRepository repository;

  RegistrationUseCase(this.repository);

  Future<Either<ResponseModel, RegistrationEntity>> call(
      RegistrationRequest data) {
    return repository.register(data);
  }
}
