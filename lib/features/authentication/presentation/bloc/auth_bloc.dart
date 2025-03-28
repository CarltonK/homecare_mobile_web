import 'package:flutter_bloc/flutter_bloc.dart';
import '../../authentication.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegistrationUseCase registrationUseCase;

  AuthBloc(this.loginUseCase, this.registrationUseCase) : super(AuthInitial()) {
    on<CheckAuthStatusEvent>((event, emit) async {
      // emit(AuthLoading());
      // final user = await authRepository.getCurrentUser(); // Check user session
      // if (user != null) {
      //   emit(AuthAuthenticated(user: user));
      // } else {
      //   emit(AuthUnauthenticated());
      // }
    });

    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      final result = await loginUseCase(event.email, event.password);
      result.fold(
        (failure) => emit(AuthFailure(failure.message)),
        (authEntity) => emit(AuthSuccess(authEntity)),
      );
    });

    on<RegistrationRequested>((event, emit) async {
      emit(AuthLoading());
      final result = await registrationUseCase(
        event.email,
        event.password,
        firstName: event.firstName,
        lastName: event.lastName,
      );
      result.fold(
        (failure) => emit(AuthFailure(failure.message)),
        (authEntity) => emit(AuthSuccess(authEntity)),
      );
    });
  }
}
