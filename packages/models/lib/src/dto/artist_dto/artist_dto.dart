import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_dto.freezed.dart';
part 'artist_dto.g.dart';

@freezed
class ArtistDto with _$ArtistDto {
  const factory ArtistDto({
    required String uid,
    required String stageName,
    String? location,
    String? biography,
    String? genre,
    String? profilePictureUrl,
  }) = _ArtistDto;

  factory ArtistDto.empty() => const ArtistDto(
        uid: '',
        stageName: '',
        location: null,
        biography: null,
        genre: null,
        profilePictureUrl: null,
      );

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);
}
