// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistDtoImpl _$$ArtistDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistDtoImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      biography: json['biography'] as String?,
      genre: json['genre'] as String?,
      supporterCount: (json['supporterCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ArtistDtoImplToJson(_$ArtistDtoImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'profilePictureUrl': instance.profilePictureUrl,
      'biography': instance.biography,
      'genre': instance.genre,
      'supporterCount': instance.supporterCount,
    };
