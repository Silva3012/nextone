import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_dto.freezed.dart';
part 'user_credentials_dto.g.dart';

@freezed
class UserCredentialsDto with _$UserCredentialsDto {
  const factory UserCredentialsDto({
    required String uid,
    required String email,
    required bool profileCompleted,
    String? role,
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
