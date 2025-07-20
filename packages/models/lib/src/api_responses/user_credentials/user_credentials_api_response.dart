import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_api_response.freezed.dart';
part 'user_credentials_api_response.g.dart';

@freezed
class UserCredentialsApiResponse with _$UserCredentialsApiResponse {
  const factory UserCredentialsApiResponse({
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'profileCompleted') required bool profileCompleted,
    @JsonKey(name: 'createdAt', fromJson: _fromTimestamp, toJson: _toTimestamp)
    DateTime? createdAt,
  }) = _UserCredentialsApiResponse;

  factory UserCredentialsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsApiResponseFromJson(json);
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

// bool _boolFromJson(dynamic value) {
//   if (value is bool) return value;
//   if (value is int) return value != 0;
//   if (value is String) return value.toLowerCase() == 'true';
//   return false; // or throw, or handle as you wish
// }
