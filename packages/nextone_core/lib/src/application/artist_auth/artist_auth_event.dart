part of 'artist_auth_bloc.dart';

@freezed
class ArtistAuthEvent with _$ArtistAuthEvent {
  const factory ArtistAuthEvent.onArtistAuthChanged(
      {required ArtistDto? artist}) = _onArtistAuthChanged;
  const factory ArtistAuthEvent.onSignOutRequested() = _onSignOutRequested;
  const factory ArtistAuthEvent.onSignUpRequested(
      {required String email,
      required String password,
      String? username}) = _onSigUpRequested;
  const factory ArtistAuthEvent.onLoginRequested(
      {required String email, required String password}) = _onLoginRequested;
}
