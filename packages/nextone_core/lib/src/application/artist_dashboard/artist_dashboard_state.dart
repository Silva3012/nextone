part of 'artist_dashboard_bloc.dart';

@freezed
class ArtistDashboardState with _$ArtistDashboardState {
  const factory ArtistDashboardState({
    required bool isLoading,
    required bool hasError,
    required ArtistDto artist,
    required List<TrackDto> tracks,
    String? errorMessage,
  }) = _ArtistDashboardState;

  factory ArtistDashboardState.initial() => ArtistDashboardState(
        isLoading: false,
        hasError: false,
        artist: ArtistDto.empty(),
        tracks: [],
      );
}
