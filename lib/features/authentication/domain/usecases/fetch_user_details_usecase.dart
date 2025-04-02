import 'package:dartz/dartz.dart';

import '../../../features.dart';

class FetchUserDetailsUseCase {
  final AuthRepository repository;

  FetchUserDetailsUseCase(this.repository);

  Future<Either<ResponseModel, UserResponseModel>> call() {
    return repository.fetchUserDetails();
  }
}
