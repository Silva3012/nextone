import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:nextone/data/models/api_responses/user_credentials/user_credentials_api_response.dart';
import 'package:nextone/data/models/dto/user_credentials/user_credentials_dto.dart';
import 'package:nextone/data/mappers/user_credentials/user_credentials_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<UserCredentialsApiResponse, UserCredentialsDto>(),
])
class UserCredentialsMapper extends $UserCredentialsMapper {}
