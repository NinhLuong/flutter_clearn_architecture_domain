import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/entities/article/article_minimize_entity.dart';
import 'package:cct_domain/repositories/article_repo.dart';
import 'package:cct_domain/core/usecases/pagination_params.dart';
import 'package:dartz/dartz.dart';

class GetReadArticles implements UseCase<List<ArticleMinimizeEntity>, PaginationParams> {
  final ArticleRepository repository;

  GetReadArticles(this.repository);

  @override
  Future<Either<Failure, List<ArticleMinimizeEntity>>> call(PaginationParams params) async {
    return await repository.fetchArticleRead(params.take, params.skip);
  }
}