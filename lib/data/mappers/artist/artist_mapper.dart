import 'package:nextone/data/models/api_responses/artist/artist_api_response.dart';
import 'package:nextone/data/models/dto/artist_dto/artist_dto.dart';

extension ArtistApiResponseMapper on ArtistApiResponse {
  ArtistDto toDto() => ArtistDto.fromApiResponse(this);
}
