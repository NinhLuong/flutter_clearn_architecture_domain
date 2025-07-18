// ThinhNguyen
// 10:49 22/8/24

import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/device_info_repo.dart';
import 'package:dartz/dartz.dart';

class DeviceInfoGetUuid implements UseCase<String, NoParams> {
  final DeviceInfoRepository repository;

  DeviceInfoGetUuid(this.repository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await repository.getUUID();
  }
}
