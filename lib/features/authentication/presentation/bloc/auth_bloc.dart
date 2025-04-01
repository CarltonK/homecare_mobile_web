import 'package:flutter_bloc/flutter_bloc.dart';
import '../../authentication.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegistrationUseCase registrationUseCase;
  final LogoutUseCase logoutUseCase;
  final PasswordResetUseCase passwordResetUseCase;

  AuthBloc(
    this.loginUseCase,
    this.registrationUseCase,
    this.logoutUseCase,
    this.passwordResetUseCase,
  ) : super(AuthInitial()) {
    on<CheckAuthStatusEvent>((event, emit) async {
      // emit(AuthLoading());
      // final result = await authRepository.getCurrentUser();
      // result.fold(
      //   (failure) => emit(AuthFailure(failure.message)),
      //   (user) {
      //     if (user != null) {
      //       emit(AuthSuccess(user));
      //     } else {
      //       emit(AuthUnauthenticated());
      //     }
      //   },
      // );
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

    on<LogoutRequested>((event, emit) async {
      emit(AuthLoading());
      final result = await logoutUseCase();
      result.fold(
        (failure) => emit(AuthFailure(failure.message)),
        (_) => emit(AuthUnauthenticated()),
      );
    });

    on<PasswordResetRequested>((event, emit) async {
      emit(AuthLoading());
      final result = await passwordResetUseCase(event.email);
      result.fold(
        (failure) => emit(AuthResponse(failure)),
        (response) => emit(AuthResponse(response)),
      );
    });
  }
}
