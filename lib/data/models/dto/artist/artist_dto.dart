import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextone/data/models/api_responses/artist/artist_api_response.dart';

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
    List<String>? socialLinks,
    List<String>? profileImages,
    int? supporterCount,
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

  factory ArtistDto.fromApiResponse(ArtistApiResponse response) {
    return ArtistDto(
      userId: response.userId,
      artistId: response.artistId,
      stageName: response.stageName,
      location: response.location,
      biography: response.biography,
      genre: response.genre,
      createdAt: response.createdAt,
      socialLinks: response.socialLinks,
      profileImages: response.profileImages,
      supporterCount: response.supporterCount,
      profilePictureUrl: response.profilePictureUrl,
    );
  }

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);
}
