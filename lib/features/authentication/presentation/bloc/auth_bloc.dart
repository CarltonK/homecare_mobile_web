import 'package:flutter_bloc/flutter_bloc.dart';
import '../../authentication.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegistrationUseCase registrationUseCase;
  final LogoutUseCase logoutUseCase;
  final PasswordResetUseCase passwordResetUseCase;
  final FetchUserDetailsUseCase fetchUserDetailsUseCase;

  AuthBloc(
    this.loginUseCase,
    this.registrationUseCase,
    this.logoutUseCase,
    this.passwordResetUseCase,
    this.fetchUserDetailsUseCase,
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
      final LoginRequest loginData = LoginRequest(
        email: event.email,
        password: event.password,
      );
      final result = await loginUseCase(loginData);
      result.fold(
        (failure) => emit(AuthResponse(failure)),
        (authEntity) => emit(AuthSuccess(authEntity)),
      );
    });

    on<RegistrationRequested>((event, emit) async {
      emit(AuthLoading());
      final RegistrationRequest regData = RegistrationRequest(
        email: event.email,
        password: event.password,
        firstName: event.firstName,
        lastName: event.lastName,
      );
      final result = await registrationUseCase(regData);
      result.fold(
        (failure) => emit(AuthResponse(failure)),
        (authEntity) => emit(RegistrationSuccess(authEntity)),
      );
    });

    on<LogoutRequested>((event, emit) async {
      emit(AuthLoading());
      final result = await logoutUseCase();
      result.fold(
        (failure) => emit(AuthResponse(failure)),
        (_) => emit(AuthUnauthenticated()),
      );
    });

    on<PasswordResetRequested>((event, emit) async {
      emit(AuthLoading());
      final LoginRequest resetData = LoginRequest(
        email: event.email,
      );
      final result = await passwordResetUseCase(resetData);
      result.fold(
        (failure) => emit(AuthResponse(failure)),
        (response) {
          if (response != null) {
            emit(AuthResponse(response));
          } else {
            emit(NullResponse());
          }
        },
      );
    });

    on<FetchUserDetails>((event, emit) async {
      emit(AuthLoading());
      final result = await fetchUserDetailsUseCase();
      result.fold(
        (failure) => emit(AuthResponse(failure)),
        (response) => emit(AuthUserDetailsSuccess(response)),
      );
    });
  }
}
