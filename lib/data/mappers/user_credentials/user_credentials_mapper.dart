import 'package:nextone/data/models/api_responses/user_credentials/user_credentials_api_response.dart';
import 'package:nextone/data/models/dto/user_credentials/user_credentials_dto.dart';

extension UserCredentialsApiResponseMapper on UserCredentialsApiResponse {
  UserCredentialsDto toDto() => UserCredentialsDto.fromApiResponse(this);
}
