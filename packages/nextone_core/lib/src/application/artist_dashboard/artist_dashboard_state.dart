part of 'artist_dashboard_bloc.dart';

@freezed
class ArtistDashboardState with _$ArtistDashboardState {
  const factory ArtistDashboardState.initial() = _Initial;
  const factory ArtistDashboardState.loading() = _Loading;
  const factory ArtistDashboardState.loaded({
    required List<TrackDto> tracks,
    required String stageName,
    required int supporterCount,
    required double earnings,
  }) = _Loaded;
  const factory ArtistDashboardState.error({required String message}) = _Error;
}
