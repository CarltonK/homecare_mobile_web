import 'package:dartz/dartz.dart';

import '../../../../core/core.dart';
import '../../authentication.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> authenticate(
    String username,
    String password,
  );
}
