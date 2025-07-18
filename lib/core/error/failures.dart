// lib/core/error/failures.dart
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure([this.message = ""]);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = "Server error occurred"]);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = "Network error occurred"]);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = "Cache error occurred"]);
}

class ValidationFailure extends Failure {
  const ValidationFailure([super.message = "Validation error occurred"]);
}

class DeviceFailure extends Failure {
  const DeviceFailure([super.message = "Device info get error"]);
}
// You can add more specific failure types as needed