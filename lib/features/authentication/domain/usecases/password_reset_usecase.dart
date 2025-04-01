import 'package:dartz/dartz.dart';
import '../../../features.dart';

class PasswordResetUseCase {
  final AuthRepository repository;

  PasswordResetUseCase(this.repository);

  Future<Either<ResponseModel, ResponseModel>> call(String email) {
    return repository.passwordReset(email);
  }
}
