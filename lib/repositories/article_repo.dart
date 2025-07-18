/**
 * @author ThinhNguyen
 * 15:55 21/8/24
 **/

import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/entities/article/article_details_entity.dart';
import 'package:cct_domain/entities/article/article_minimize_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ArticleRepository {
  Future<Either<Failure, ArticleDetailsEntity>> fetchArticle(int id, bool isReview);

  Future<Either<Failure, bool>> updateProgress(int progress, int id);

  Future<Either<Failure, bool>> voteArticle(int id, int? voteValue);

  Future<Either<Failure, void>> updateAnswerProgress(int questionId, bool result);

  Future<Either<Failure, void>> updateUserGotArticle(int articleId);

  Future<Either<Failure, List<ArticleMinimizeEntity>>> fetchArticleRead(int take, int skip);

  Future<Either<Failure, List<ArticleMinimizeEntity>>> fetchArticleGot(int take, int skip);

  Future<Either<Failure, List<ArticleMinimizeEntity>>> fetchArticleSuggestion(int take, int skip);
}