import 'package:freezed_annotation/freezed_annotation.dart';

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

  factory TrackDto.fromJson(Map<String, dynamic> json) =>
      _$TrackDtoFromJson(json);
}
