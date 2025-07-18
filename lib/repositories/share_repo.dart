import 'package:cct_domain/core/error/failures.dart';
import 'package:dartz/dartz.dart';

/**
 * @author ThinhNguyen
 * 16:19 21/8/24
 **/

abstract class ShareRepository {
  Future<Either<Failure, String>> generateShareLink({
    required int itemType,
    required int itemId,
    int subItemType = -1,
    int subItemId = -1,
  });

  Future<Either<Failure, Unit>> copyLinkToClipboard({
    required int itemType,
    required int itemId,
  });
}
