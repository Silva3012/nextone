// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracks_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TracksApiResponseImpl _$$TracksApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TracksApiResponseImpl(
      trackId: json['trackId'] as String,
      artistId: json['artistId'] as String,
      title: json['title'] as String,
      genre: json['genre'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      audioUrl: json['audioUrl'] as String?,
      coverArtUrl: json['coverArtUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      playCount: (json['playCount'] as num?)?.toInt(),
      downloadCount: (json['downloadCount'] as num?)?.toInt(),
      createdAt: _fromTimestamp(json['createdAt']),
    );

Map<String, dynamic> _$$TracksApiResponseImplToJson(
        _$TracksApiResponseImpl instance) =>
    <String, dynamic>{
      'trackId': instance.trackId,
      'artistId': instance.artistId,
      'title': instance.title,
      'genre': instance.genre,
      'price': instance.price,
      'audioUrl': instance.audioUrl,
      'coverArtUrl': instance.coverArtUrl,
      'metadata': instance.metadata,
      'playCount': instance.playCount,
      'downloadCount': instance.downloadCount,
      'createdAt': _toTimestamp(instance.createdAt),
    };
