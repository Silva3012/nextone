import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextone/data/models/api_responses/tracks/tracks_api_response.dart';

part 'track_dto.freezed.dart';
part 'track_dto.g.dart';

@freezed
class TrackDto with _$TrackDto {
  const factory TrackDto({
    required String trackId,
    required String artistId,
    required String title,
    required String audioUrl,
    required String coverArtUrl,
    int? playCount,
    String? genre,
  }) = _TrackDto;

  factory TrackDto.empty() => const TrackDto(
        trackId: '',
        artistId: '',
        title: '',
        audioUrl: '',
        coverArtUrl: '',
        playCount: 0,
        genre: '',
      );

  factory TrackDto.fromApiResponse(TracksApiResponse response) {
    return TrackDto(
      trackId: response.trackId,
      artistId: response.artistId,
      title: response.title,
      audioUrl: response.audioUrl ?? '',
      coverArtUrl: response.coverArtUrl ?? '',
      playCount: response.playCount,
      genre: response.genre,
    );
  }

  factory TrackDto.fromJson(Map<String, dynamic> json) =>
      _$TrackDtoFromJson(json);
}
