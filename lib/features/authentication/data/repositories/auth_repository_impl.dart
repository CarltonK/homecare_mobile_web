import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, AuthEntity>> authenticate(
      String username, String password) async {
    try {
      final response = await remoteDataSource.authenticate(username, password);
      return Right(AuthEntity.fromLoginResponse(response));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> register(String username, String password,
      String firstName, String lastName) async {
    try {
      final response = await remoteDataSource.register(
        username,
        password,
        firstName,
        lastName,
      );
      return Right(AuthEntity.fromLoginResponse(response));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await remoteDataSource.logout();
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<ResponseModel, ResponseModel>> passwordReset(String email) async {
    try {
      final response = await remoteDataSource.passwordReset(email);
      return Right(response);
    } catch (e) {
      return Left(ResponseModel(message: e.toString()));
    }
  }
}
