// ThinhNguyen
// 10:48 22/8/24

import 'package:cct_domain/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> getAccessToken();

  Future<Either<Failure, String>> getRefreshToken();
}
