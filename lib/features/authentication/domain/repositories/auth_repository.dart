import 'package:dartz/dartz.dart';

import '../../authentication.dart';

abstract class AuthRepository {
  Future<Either<ResponseModel, AuthEntity>> authenticate(
    String username,
    String password,
  );

  Future<Either<ResponseModel, AuthEntity>> register(
    String username,
    String password,
    String firstName,
    String lastName,
  );

  Future<Either<ResponseModel, void>> logout();

  Future<Either<ResponseModel, ResponseModel>> passwordReset(String email);
}
