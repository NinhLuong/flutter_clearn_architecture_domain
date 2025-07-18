// ThinhNguyen
// 15:42 22/8/24

import 'package:cct_domain/entities/article/article_minimize_entity.dart';
import 'package:cct_domain/entities/collection/collection_details_entity.dart';

class CollectionWithArticleEntity {
  final CollectionDetailsEntity collectionDetailsEntity;
  final List<ArticleMinimizeEntity> articleList;

  CollectionWithArticleEntity(this.collectionDetailsEntity, this.articleList);
}