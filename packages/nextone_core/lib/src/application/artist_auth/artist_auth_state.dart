part of 'artist_auth_bloc.dart';

@freezed
class ArtistAuthState with _$ArtistAuthState {
  const factory ArtistAuthState.unknown() = _Unknown;
  const factory ArtistAuthState.authenticated(ArtistDto artist) =
      _Authenticated;
  const factory ArtistAuthState.unauthenticated() = _Unauthenticated;
}
