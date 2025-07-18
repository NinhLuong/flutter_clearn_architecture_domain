import 'package:equatable/equatable.dart';

class PaginationParams extends Equatable {
  final int take;
  final int skip;

  const PaginationParams({required this.take, required this.skip});

  @override
  List<Object> get props => [take, skip];
}