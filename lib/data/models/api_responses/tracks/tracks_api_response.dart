import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracks_api_response.freezed.dart';
part 'tracks_api_response.g.dart';

@freezed
class TracksApiResponse with _$TracksApiResponse {
  const factory TracksApiResponse({
    @JsonKey(name: 'trackId') required String trackId,
    @JsonKey(name: 'artistId') required String artistId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'genre') String? genre,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'audioUrl') String? audioUrl,
    @JsonKey(name: 'coverArtUrl') String? coverArtUrl,
    @JsonKey(name: 'metadata') Map<String, dynamic>? metadata,
    @JsonKey(name: 'playCount') int? playCount,
    @JsonKey(name: 'downloadCount') int? downloadCount,
    @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
    DateTime? createdAt,
  }) = _TracksApiResponse;

  factory TracksApiResponse.fromJson(Map<String, dynamic> json) =>
      _$TracksApiResponseFromJson(json);
}

DateTime? _fromTimestamp(dynamic timestamp) {
  if (timestamp == null) return null;
  if (timestamp is String) {
    return DateTime.parse(timestamp);
  }
  if (timestamp is Map<String, dynamic> && timestamp['seconds'] != null) {
    // Handle Firestore timestamp format for backward compatibility
    final seconds = timestamp['seconds'] as int;
    final nanoseconds = timestamp['nanoseconds'] as int? ?? 0;
    return DateTime.fromMillisecondsSinceEpoch(
        seconds * 1000 + (nanoseconds / 1000000).round());
  }
  return DateTime.parse(timestamp.toString());
}

String _toTimestamp(DateTime? dateTime) {
  if (dateTime == null) return DateTime.now().toIso8601String();
  return dateTime.toIso8601String();
}
