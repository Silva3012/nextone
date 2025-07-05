// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtistDtoImpl _$$ArtistDtoImplFromJson(Map<String, dynamic> json) =>
    _$ArtistDtoImpl(
      userId: json['user_id'] as String,
      artistId: json['artist_id'] as String,
      stageName: json['stage_name'] as String,
      location: json['location'] as String,
      biography: json['biography'] as String,
      genre: json['genre'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      socialLinks: (json['social_links'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      profileImages: (json['profile_images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      supporterCount: (json['supporter_count'] as num?)?.toInt() ?? 0,
      profilePictureUrl: json['profile_picture_url'] as String?,
    );

Map<String, dynamic> _$$ArtistDtoImplToJson(_$ArtistDtoImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'artist_id': instance.artistId,
      'stage_name': instance.stageName,
      'location': instance.location,
      'biography': instance.biography,
      'genre': instance.genre,
      'created_at': instance.createdAt?.toIso8601String(),
      'social_links': instance.socialLinks,
      'profile_images': instance.profileImages,
      'supporter_count': instance.supporterCount,
      'profile_picture_url': instance.profilePictureUrl,
    };
