// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistDtoImpl _$$ArtistDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistDtoImpl(
      userId: json['userId'] as String,
      artistId: json['artistId'] as String,
      stageName: json['stageName'] as String,
      location: json['location'] as String,
      biography: json['biography'] as String,
      genre: json['genre'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      socialLinks: (json['socialLinks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      profileImages: (json['profileImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      supporterCount: (json['supporterCount'] as num?)?.toInt() ?? 0,
      profilePictureUrl: json['profilePictureUrl'] as String?,
    );

Map<String, dynamic> _$$ArtistDtoImplToJson(_$ArtistDtoImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'artistId': instance.artistId,
      'stageName': instance.stageName,
      'location': instance.location,
      'biography': instance.biography,
      'genre': instance.genre,
      'createdAt': instance.createdAt?.toIso8601String(),
      'socialLinks': instance.socialLinks,
      'profileImages': instance.profileImages,
      'supporterCount': instance.supporterCount,
      'profilePictureUrl': instance.profilePictureUrl,
    };
