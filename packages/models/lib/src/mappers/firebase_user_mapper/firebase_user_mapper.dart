import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:models/models.dart';

import 'firebase_user_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<FirebaseUserDto, ArtistDto>(),
])
class FirebaseUserDtoMapper extends $FirebaseUserDtoMapper {}
