import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_api_response.freezed.dart';
part 'artist_api_response.g.dart';

@freezed
class ArtistApiResponse with _$ArtistApiResponse {
  const factory ArtistApiResponse({
    @JsonKey(name: 'userId') required String userId,
    @JsonKey(name: 'artistId') required String artistId,
    @JsonKey(name: 'stageName') required String stageName,
    @JsonKey(name: 'location') required String location,
    @JsonKey(name: 'biography') required String biography,
    @JsonKey(name: 'genre') required String genre,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'socialLinks') List<String>? socialLinks,
    @JsonKey(name: 'profileImages') List<String>? profileImages,
    @JsonKey(name: 'supporterCount') int? supporterCount,
    @JsonKey(name: 'profilePictureUrl') String? profilePictureUrl,
  }) = _ArtistApiResponse;

  factory ArtistApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ArtistApiResponseFromJson(json);
}
