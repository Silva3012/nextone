import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_dto.freezed.dart';
part 'artist_dto.g.dart';

@freezed
class ArtistDto with _$ArtistDto {
  const factory ArtistDto({
    required String userId,
    required String artistId,
    required String stageName,
    required String location,
    required String biography,
    required String genre,
    DateTime? createdAt,
    @Default([]) List<String> socialLinks,
    @Default([]) List<String> profileImages,
    @Default(0) int supporterCount,
    String? profilePictureUrl,
  }) = _ArtistDto;

  factory ArtistDto.empty() => const ArtistDto(
        userId: '',
        artistId: '',
        stageName: '',
        location: '',
        biography: '',
        genre: '',
        createdAt: null,
        socialLinks: [],
        profileImages: [],
        supporterCount: 0,
        profilePictureUrl: null,
      );

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);
}
