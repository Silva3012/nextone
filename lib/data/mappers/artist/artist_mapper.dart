import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:nextone/data/models/api_responses/artist/artist_api_response.dart';
import 'package:nextone/data/models/dto/artist_dto/artist_dto.dart';
import 'package:nextone/data/mappers/artist/artist_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<ArtistApiResponse, ArtistDto>(),
])
class ArtistMapper extends $ArtistMapper {}
