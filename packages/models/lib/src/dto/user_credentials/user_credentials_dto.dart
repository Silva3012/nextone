import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_dto.freezed.dart';
part 'user_credentials_dto.g.dart';

@freezed
class UserCredentialsDto with _$UserCredentialsDto {
  const factory UserCredentialsDto({
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'profile_completed') @Default(false) bool profileCompleted,
    @JsonKey(name: 'created_at', fromJson: _fromTimestamp, toJson: _toTimestamp)
    DateTime? createdAt,
  }) = _UserCredentialsDto;

  factory UserCredentialsDto.empty() => const UserCredentialsDto(
        email: '',
        uid: '',
        role: '',
        profileCompleted: false,
        createdAt: null,
      );

  factory UserCredentialsDto.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsDtoFromJson(json);
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
