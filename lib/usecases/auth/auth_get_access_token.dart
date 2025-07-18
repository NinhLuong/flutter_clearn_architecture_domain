// ThinhNguyen
// 11:03 22/8/24

import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthGetAccessToken implements UseCase<String, NoParams> {
  final AuthRepository repository;

  AuthGetAccessToken(this.repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await repository.getAccessToken();
  }
}
