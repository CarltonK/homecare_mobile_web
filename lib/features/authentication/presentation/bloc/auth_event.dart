import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CheckAuthStatusEvent extends AuthEvent {}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;

  LoginRequested({required this.email, required this.password});
}

class RegistrationRequested extends AuthEvent {
  final String email;
  final String password;
  final String? firstName;
  final String? lastName;

  RegistrationRequested({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
  });
}

class LogoutRequested extends AuthEvent {}

class PasswordResetRequested extends AuthEvent {
  final String email;

  PasswordResetRequested({required this.email});
}

class FetchUserDetails extends AuthEvent {}
