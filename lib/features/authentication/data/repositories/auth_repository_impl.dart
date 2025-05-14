import 'package:dartz/dartz.dart';

import '../../authentication.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<ResponseModel, AuthEntity>> authenticate(
      LoginRequest data) async {
    try {
      final response = await remoteDataSource.authenticate(data);
      return Right(AuthEntity.fromLoginResponse(response));
    } catch (e) {
      if (e is ResponseModel) {
        return Left(e);
      }
      return Left(ResponseModel(error: 'Authentication failed: $e'));
    }
  }

  @override
  Future<Either<ResponseModel, AuthEntity>> register(String username,
      String password, String firstName, String lastName) async {
    try {
      final response = await remoteDataSource.register(
        username,
        password,
        firstName,
        lastName,
      );
      return Right(AuthEntity.fromLoginResponse(response));
    } catch (e) {
      if (e is ResponseModel) {
        return Left(e);
      }
      return Left(ResponseModel(error: 'Registration failed: $e'));
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

  @override
  Future<Either<ResponseModel, UserResponseModel>> fetchUserDetails() async {
    try {
      final response = await remoteDataSource.fetchUserDetails();
      return Right(response);
    } catch (e) {
      if (e is ResponseModel) {
        return Left(e);
      }
      return Left(ResponseModel(message: 'Fetch User Details failed: $e'));
    }
  }
}
