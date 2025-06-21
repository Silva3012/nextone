// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistDtoImpl _$$ArtistDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistDtoImpl(
      uid: json['uid'] as String,
      stageName: json['stageName'] as String,
      location: json['location'] as String?,
      biography: json['biography'] as String?,
      genre: json['genre'] as String?,
      profilePictureUrl: json['profilePictureUrl'] as String?,
    );

Map<String, dynamic> _$$ArtistDtoImplToJson(_$ArtistDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'stageName': instance.stageName,
      'location': instance.location,
      'biography': instance.biography,
      'genre': instance.genre,
      'profilePictureUrl': instance.profilePictureUrl,
    };
