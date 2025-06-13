part of 'artist_auth_bloc.dart';

@freezed
class ArtistAuthEvent with _$ArtistAuthEvent {
  const factory ArtistAuthEvent.onArtistAuthChanged(ArtistDto? artist) =
      _onArtistAuthChanged;
  const factory ArtistAuthEvent.onSignOutRequested() = _onSignOutRequested;
}
