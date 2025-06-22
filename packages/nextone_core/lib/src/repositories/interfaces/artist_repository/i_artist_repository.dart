import 'package:models/models.dart';

abstract class IArtistRepository {
  Future<void> saveArtist({required ArtistDto artist});

  Future<ArtistDto?> getArtist({required String artistId});

  Future<String> uploadProfileImage({
    required String artistId,
    required String filePath,
  });
  Future<void> updateProdilePictureUrl({
    required String artistId,
    required String profilePictureUrl,
  });
}
