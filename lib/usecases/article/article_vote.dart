import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/article_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class VoteArticle implements UseCase<bool, VoteArticleParams> {
  final ArticleRepository repository;

  VoteArticle(this.repository);

  @override
  Future<Either<Failure, bool>> call(VoteArticleParams params) async {
    return await repository.voteArticle(params.id, params.voteValue);
  }
}

class VoteArticleParams extends Equatable {
  final int id;
  final int? voteValue;

  const VoteArticleParams({required this.id, this.voteValue});

  @override
  List<Object?> get props => [id, voteValue];
}