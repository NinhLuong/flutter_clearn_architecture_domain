import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/entities/collection/collection_details_entity.dart';
import 'package:cct_domain/repositories/collection_repo.dart';
import 'package:dartz/dartz.dart';

/**
 * @author ThinhNguyen
 * 16:26 21/8/24
 **/

class CollectionGetTopForHomePage
    implements UseCase<List<CollectionDetailsEntity>, Params> {
  final CollectionRepository repository;

  CollectionGetTopForHomePage(this.repository);

  @override
  Future<Either<Failure, List<CollectionDetailsEntity>>> call(Params params) async {
    return await repository.fetchTopCollections(params.childId);
  }
}

class Params {
  final List<int> childId;

  Params({required this.childId});
}
