// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackDtoImpl _$$TrackDtoImplFromJson(Map<String, dynamic> json) =>
    _$TrackDtoImpl(
      trackId: json['trackId'] as String,
      artistId: json['artistId'] as String,
      title: json['title'] as String,
      audioUrl: json['audioUrl'] as String,
      coverArtUrl: json['coverArtUrl'] as String,
      playCount: (json['playCount'] as num?)?.toInt(),
      genre: json['genre'] as String?,
    );

Map<String, dynamic> _$$TrackDtoImplToJson(_$TrackDtoImpl instance) =>
    <String, dynamic>{
      'trackId': instance.trackId,
      'artistId': instance.artistId,
      'title': instance.title,
      'audioUrl': instance.audioUrl,
      'coverArtUrl': instance.coverArtUrl,
      'playCount': instance.playCount,
      'genre': instance.genre,
    };
