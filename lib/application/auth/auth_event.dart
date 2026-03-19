part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onAuthChanged({required UserCredentialsDto? user}) =
      OnAuthChanged;

  const factory AuthEvent.onSignOutRequested() = OnSignOutRequested;

  const factory AuthEvent.onSignUpRequested({
    required String email,
    required String password,
  }) = OnSignUpRequested;

  const factory AuthEvent.onLoginRequested({
    required String email,
    required String password,
  }) = OnLoginRequested;

  const factory AuthEvent.onForgotPasswordRequested({
    required String email,
  }) = OnForgotPasswordRequested;

  const factory AuthEvent.onRoleSelected({
    required String uid,
    required String email,
    required String role,
  }) = OnRoleSelected;

  const factory AuthEvent.onProfileCompleted({
    required UserCredentialsDto user,
  }) = OnProfileCompleted;

  const factory AuthEvent.completeOnboarding({
    required UserCredentialsDto user,
    required String stageName,
    required String location,
    required String biography,
    required String genre,
    required File profileImage,
  }) = CompleteOnboarding;
}
