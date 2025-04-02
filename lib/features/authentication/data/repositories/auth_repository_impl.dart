import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<ResponseModel, AuthEntity>> authenticate(
    String username,
    String password,
  ) async {
    try {
      final response = await remoteDataSource.authenticate(username, password);
      return Right(AuthEntity.fromLoginResponse(response));
    } catch (e) {
      if (e is ResponseModel) {
        return Left(e);
      }
      return Left(ResponseModel(message: 'Authentication failed: $e'));
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
  Future<Either<ResponseModel, void>> logout() async {
    try {
      await remoteDataSource.logout();
      return const Right(null);
    } catch (e) {
      if (e is ResponseModel) {
        return Left(e);
      }
      return Left(ResponseModel(message: 'Logout failed: $e'));
    }
  }

  @override
  Future<Either<ResponseModel, ResponseModel>> passwordReset(
      String email) async {
    try {
      final response = await remoteDataSource.passwordReset(email);
      return Right(response);
    } catch (e) {
      if (e is ResponseModel) {
        return Left(e);
      }
      return Left(ResponseModel(message: 'Password Reset failed: $e'));
    }
  }
}
