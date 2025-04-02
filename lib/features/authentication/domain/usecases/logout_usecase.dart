import 'package:dartz/dartz.dart';
import '../../../features.dart';

class LogoutUseCase {
  final AuthRepository repository;

  LogoutUseCase(this.repository);

  Future<Either<ResponseModel, void>> call() {
    return repository.logout();
  }
}
