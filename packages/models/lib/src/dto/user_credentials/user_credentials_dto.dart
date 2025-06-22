import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'user_credentials_dto.freezed.dart';
part 'user_credentials_dto.g.dart';

@freezed
class UserCredentialsDto with _$UserCredentialsDto {
  const factory UserCredentialsDto({
    required String uid,
    required String email,
    String? role,
    @Default(false) bool profileCompleted,
    @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)
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
  return (timestamp as Timestamp).toDate();
}

Timestamp _toTimestamp(DateTime? dateTime) {
  if (dateTime == null) return Timestamp.now();
  return Timestamp.fromDate(dateTime);
}
