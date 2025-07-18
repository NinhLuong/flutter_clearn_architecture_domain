// ThinhNguyen
// 10:48 22/8/24

import 'package:cct_domain/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class DeviceInfoRepository {
  Future<Either<Failure, String>> getUUID();

  Future<Either<Failure, void>> saveUuid(String uuid);
}