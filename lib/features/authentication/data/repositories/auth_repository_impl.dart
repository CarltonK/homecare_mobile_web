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
}
