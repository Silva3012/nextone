import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextone/data/models/api_responses/user_credentials/user_credentials_api_response.dart';

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

  factory UserCredentialsDto.fromApiResponse(
    UserCredentialsApiResponse response,
  ) {
    return UserCredentialsDto(
      uid: response.uid,
      email: response.email,
      profileCompleted: response.profileCompleted,
      role: response.role,
      createdAt: response.createdAt,
    );
  }

  factory UserCredentialsDto.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsDtoFromJson(json);
}
