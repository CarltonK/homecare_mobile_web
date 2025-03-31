import 'package:equatable/equatable.dart';
import '../../domain/entities/auth_entity.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthUnauthenticated extends AuthState {}

class AuthSuccess extends AuthState {
  final AuthEntity authEntity;

  AuthSuccess(this.authEntity);
}

class AuthFailure extends AuthState {
  final String message;

  AuthFailure(this.message);
}
