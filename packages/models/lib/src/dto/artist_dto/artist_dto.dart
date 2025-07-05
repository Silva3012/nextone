import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_dto.freezed.dart';
part 'artist_dto.g.dart';

@freezed
class ArtistDto with _$ArtistDto {
  const factory ArtistDto({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'artist_id') required String artistId,
    @JsonKey(name: 'stage_name') required String stageName,
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'biography') required String biography,
    @JsonKey(name: 'genre') required String genre,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'social_links') @Default([]) List<String> socialLinks,
    @JsonKey(name: 'profile_images') @Default([]) List<String> profileImages,
    @JsonKey(name: 'supporter_count') @Default(0) int supporterCount,
    @JsonKey(name: 'profile_picture_url') String? profilePictureUrl,
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
