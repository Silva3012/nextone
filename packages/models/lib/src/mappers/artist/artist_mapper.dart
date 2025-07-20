import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:models/src/api_responses/artist/artist_api_response.dart';
import 'package:models/src/dto/artist_dto/artist_dto.dart';
import 'package:models/src/mappers/artist/artist_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<ArtistApiResponse, ArtistDto>(),
])
class ArtistMapper extends $ArtistMapper {}
