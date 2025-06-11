import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'artist_dto.freezed.dart';

part 'artist_dto.g.dart';

@freezed
class ArtistDto with _$ArtistDto {
  factory ArtistDto({
    required String uid,
    required String email,
    required String username,
    String? profilePictureUrl,
    String? biography,
    String? genre,
    int? supporterCount,
  }) = _ArtistDto;

  factory ArtistDto.empty() => ArtistDto(
        uid: '',
        username: '',
        email: '',
        profilePictureUrl: '',
        biography: '',
        genre: '',
        supporterCount: 0,
      );

  factory ArtistDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistDtoFromJson(json);
}
