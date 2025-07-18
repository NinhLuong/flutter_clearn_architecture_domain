// ThinhNguyen
// 11:04 22/8/24

import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthGetRefreshToken implements UseCase<String, NoParams> {
  final AuthRepository repository;

  AuthGetRefreshToken(this.repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await repository.getRefreshToken();
  }
}
