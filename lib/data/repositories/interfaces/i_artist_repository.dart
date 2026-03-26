import 'package:nextone/data/models/models.dart';

abstract class IArtistRepository {
  Future<void> saveArtist({required ArtistDto artist});

  Future<ArtistDto?> getArtist({required String artistId});

  Future<String> uploadProfileImage({
    required String artistId,
    required String filePath,
  });
  Future<void> updateProfilePictureUrl({
    required String artistId,
    required String profilePictureUrl,
  });

  Future<List<TrackDto>> getArtistTracks({required String artistId});
}
