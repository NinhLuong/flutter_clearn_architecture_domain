import 'package:cct_domain/core/error/failures.dart';
import 'package:cct_domain/core/usecases/usecase.dart';
import 'package:cct_domain/repositories/article_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class UpdateAnswerProgress implements UseCase<void, UpdateAnswerProgressParams> {
  final ArticleRepository repository;

  UpdateAnswerProgress(this.repository);

  @override
  Future<Either<Failure, void>> call(UpdateAnswerProgressParams params) async {
    return await repository.updateAnswerProgress(params.questionId, params.result);
  }
}

class UpdateAnswerProgressParams extends Equatable {
  final int questionId;
  final bool result;

  const UpdateAnswerProgressParams({required this.questionId, required this.result});

  @override
  List<Object> get props => [questionId, result];
}
