part of 'artist_dashboard_bloc.dart';

@freezed
class ArtistDashboardEvent with _$ArtistDashboardEvent {
  const factory ArtistDashboardEvent.onGetTracks({required String artistId}) =
      OnGetTracks;
}
