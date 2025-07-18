import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/article_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UpdateArticleProgress implements UseCase<bool, UpdateArticleProgressParams> {
  final ArticleRepository repository;

  UpdateArticleProgress(this.repository);

  @override
  Future<Either<Failure, bool>> call(UpdateArticleProgressParams params) async {
    return await repository.updateProgress(params.progress, params.id);
  }
}

class UpdateArticleProgressParams extends Equatable {
  final int progress;
  final int id;

  const UpdateArticleProgressParams({required this.progress, required this.id});

  @override
  List<Object> get props => [progress, id];
}