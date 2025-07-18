import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/entities/article/article_details_entity.dart';
import 'package:cct_domain/repositories/article_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetArticleDetails implements UseCase<ArticleDetailsEntity, GetArticleDetailsParams> {
  final ArticleRepository repository;

  GetArticleDetails(this.repository);

  @override
  Future<Either<Failure, ArticleDetailsEntity>> call(GetArticleDetailsParams params) async {
    return await repository.fetchArticle(params.id, params.isReview);
  }
}

class GetArticleDetailsParams extends Equatable {
  final int id;
  final bool isReview;

  const GetArticleDetailsParams({required this.id, required this.isReview});

  @override
  List<Object> get props => [id, isReview];
}
