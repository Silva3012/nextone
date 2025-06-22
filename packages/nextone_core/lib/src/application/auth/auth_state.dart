part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unknown() = _Unknown;

  const factory AuthState.authenticated({required UserCredentialsDto user}) =
      _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.needsRoleSelection(
      {required String uid, required String email}) = _NeedsRoleSelection;

  const factory AuthState.needsOnboarding({required UserCredentialsDto user}) =
      _NeedsOnboarding;
}
