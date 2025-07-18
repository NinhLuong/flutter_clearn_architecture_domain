import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/share_repo.dart';
import 'package:dartz/dartz.dart';

/**
 * @author ThinhNguyen
 * 16:20 21/8/24
 **/

class ShareLink implements UseCase<String, ShareLinkParams> {
  final ShareRepository repository;

  ShareLink(this.repository);

  @override
  Future<Either<Failure, String>> call(ShareLinkParams params) async {
    return await repository.generateShareLink(
      itemType: params.itemType,
      itemId: params.itemId,
      subItemType: params.subItemType,
      subItemId: params.subItemId,
    );
  }
}

class ShareLinkParams {
  final int itemType;
  final int itemId;
  final int subItemType;
  final int subItemId;

  ShareLinkParams({
    required this.itemType,
    required this.itemId,
    this.subItemType = -1,
    this.subItemId = -1,
  });
}