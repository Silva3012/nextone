part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onAuthChanged({required UserCredentialsDto? user}) =
      _OnAuthChanged;

  const factory AuthEvent.onSignOutRequested() = _OnSignOutRequested;

  const factory AuthEvent.onSignUpRequested({
    required String email,
    required String password,
  }) = _OnSignUpRequested;

  const factory AuthEvent.onLoginRequested({
    required String email,
    required String password,
  }) = _OnLoginRequested;
}
