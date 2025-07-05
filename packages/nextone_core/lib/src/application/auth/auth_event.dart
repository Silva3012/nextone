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

  const factory AuthEvent.onRoleSelected({
    required String uid,
    required String email,
    required String role,
  }) = _OnRoleSelected;

  const factory AuthEvent.onProfileCompleted({
    required UserCredentialsDto user,
  }) = _OnProfileCompleted;

  const factory AuthEvent.completeOnboarding({
    required UserCredentialsDto user,
    required String stageName,
    required String location,
    required String biography,
    required String genre,
    required File profileImage,
  }) = _CompleteOnboarding;
}
