import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/entities/collection/collection_with_article_entity.dart';
import 'package:cct_domain/repositories/collection_repo.dart';
import 'package:dartz/dartz.dart';

/**
 * @author ThinhNguyen
 * 16:24 21/8/24
 **/

class CollectionWithArticleGet
    implements UseCase<CollectionWithArticleEntity, Params> {
  final CollectionRepository repository;

  CollectionWithArticleGet(this.repository);

  @override
  Future<Either<Failure, CollectionWithArticleEntity>> call(
      Params params) async {
    return await repository.fetchCollectionWithArticles(params.collectionId);
  }
}

class Params {
  final int collectionId;

  Params({required this.collectionId});
}
