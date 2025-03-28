import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

// Server failure (e.g., API errors)
class ServerFailure extends Failure {
  const ServerFailure({required super.message});
}

// Cache failure (e.g., local storage issues)
class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}
