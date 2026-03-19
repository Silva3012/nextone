import 'package:nextone/data/models/models.dart';

extension TracksApiResponseMapper on TracksApiResponse {
  TrackDto toDto() => TrackDto.fromApiResponse(this);
}
