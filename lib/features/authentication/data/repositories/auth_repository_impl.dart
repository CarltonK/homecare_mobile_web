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
  Future<Either<ResponseModel, RegistrationEntity>> register(
      RegistrationRequest data) async {
    try {
      final response = await remoteDataSource.register(data);
      return Right(RegistrationEntity.fromResponse(response));
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
  Future<Either<ResponseModel, ResponseModel?>> passwordReset(
      LoginRequest data) async {
    try {
      final response = await remoteDataSource.passwordReset(data);
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
