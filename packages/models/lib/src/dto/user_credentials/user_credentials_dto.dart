import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_credentials_dto.freezed.dart';
part 'user_credentials_dto.g.dart';

@freezed
class UserCredentialsDto with _$UserCredentialsDto {
  const factory UserCredentialsDto({
    required String uid,
    required String email,
    String? role,
  }) = _UserCredentialsDto;

  factory UserCredentialsDto.empty() => const UserCredentialsDto(
        email: '',
        uid: '',
        role: '',
      );

  factory UserCredentialsDto.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsDtoFromJson(json);
}
