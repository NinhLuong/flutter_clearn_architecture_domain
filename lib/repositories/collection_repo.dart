import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/entities/collection/collection_details_entity.dart';
import 'package:cct_domain/entities/collection/collection_with_article_entity.dart';
import 'package:dartz/dartz.dart';

/**
 * @author ThinhNguyen
 * 16:21 21/8/24
 **/

abstract class CollectionRepository {
  Future<Either<Failure, CollectionWithArticleEntity>> fetchCollectionWithArticles(int collectionId);

  Future<Either<Failure, List<CollectionDetailsEntity>>> fetchTopCollections(List<int> ageIds);
}
