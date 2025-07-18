import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/share_repo.dart';
import 'package:dartz/dartz.dart';

/**
 * @author ThinhNguyen
 * 16:20 21/8/24
 **/

class CopyLinkToClipboard implements UseCase<Unit, CopyLinkParams> {
  final ShareRepository repository;

  CopyLinkToClipboard(this.repository);

  @override
  Future<Either<Failure, Unit>> call(CopyLinkParams params) async {
    return await repository.copyLinkToClipboard(
      itemType: params.itemType,
      itemId: params.itemId,
    );
  }
}

class CopyLinkParams {
  final int itemType;
  final int itemId;

  CopyLinkParams({
    required this.itemType,
    required this.itemId,
  });
}