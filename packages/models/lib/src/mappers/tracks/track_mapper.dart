import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:models/models.dart';

import 'track_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<TracksApiResponse, TrackDto>(),
])
class TrackMapper extends $TrackMapper {}
