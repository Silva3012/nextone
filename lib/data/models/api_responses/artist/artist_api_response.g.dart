// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistApiResponseImpl _$$ArtistApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistApiResponseImpl(
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
          .toList(),
      profileImages: (json['profileImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      supporterCount: (json['supporterCount'] as num?)?.toInt(),
      profilePictureUrl: json['profilePictureUrl'] as String?,
    );

Map<String, dynamic> _$$ArtistApiResponseImplToJson(
        _$ArtistApiResponseImpl instance) =>
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
