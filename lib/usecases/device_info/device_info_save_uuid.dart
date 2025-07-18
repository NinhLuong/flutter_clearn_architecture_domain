// ThinhNguyen
// 14:11 22/8/24

import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/device_info_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class DeviceInfoSaveUuid implements UseCase<void, DeviceInfoSaveUuidParams> {
  final DeviceInfoRepository repository;

  DeviceInfoSaveUuid(this.repository);

  @override
  Future<Either<Failure, void>> call(DeviceInfoSaveUuidParams params) async {
    return await repository.saveUuid(params.uuid);
  }
}

class DeviceInfoSaveUuidParams extends Equatable {
  final String uuid;

  const DeviceInfoSaveUuidParams({required this.uuid});

  @override
  List<Object> get props => [id, uuid];
}
