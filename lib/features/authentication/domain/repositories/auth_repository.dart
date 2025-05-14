import 'package:dartz/dartz.dart';

import '../../authentication.dart';

abstract class AuthRepository {
  Future<Either<ResponseModel, AuthEntity>> authenticate(LoginRequest data);

  Future<Either<ResponseModel, RegistrationEntity>> register(
      RegistrationRequest data);

  Future<Either<ResponseModel, void>> logout();

  Future<Either<ResponseModel, ResponseModel>> passwordReset(String email);

  Future<Either<ResponseModel, UserResponseModel>> fetchUserDetails();
}
