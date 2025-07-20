import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:models/src/api_responses/user_credentials/user_credentials_api_response.dart';
import 'package:models/src/dto/user_credentials/user_credentials_dto.dart';
import 'package:models/src/mappers/user_credentials/user_credentials_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<UserCredentialsApiResponse, UserCredentialsDto>(),
])
class UserCredentialsMapper extends $UserCredentialsMapper {}
