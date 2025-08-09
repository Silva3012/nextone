part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unknown() = Unknown;

  const factory AuthState.authenticated({required UserCredentialsDto user}) =
      _Authenticated;

  const factory AuthState.unauthenticated() = Unauthenticated;

  const factory AuthState.loading() = Loading;

  const factory AuthState.error({
    required String message,
    String? details,
  }) = _Error;

  const factory AuthState.forgotPasswordEmailSent() = ForgotPasswordEmailSent;
  const factory AuthState.forgotPasswordError({required String message}) =
      ForgotPasswordError;

  const factory AuthState.needsRoleSelection(
      {required String uid, required String email}) = _NeedsRoleSelection;

  const factory AuthState.needsOnboarding({required UserCredentialsDto user}) =
      NeedsOnboarding;
}
