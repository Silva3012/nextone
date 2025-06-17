import 'package:models/models.dart';

abstract class IFirebaseArtistAuth {
  Stream<ArtistDto?> get user;

  Future<ArtistDto> logInWithEmailAndPassword(
      {required String email, required String password});

  Future<ArtistDto> signUpWithEmailAndPassword(
      {required String email, required String password, String? username});

  Future<void> signOut();

  Future<void> resetPassword(String email);

  // Future<void> setUserData(ArtistDto artist);

  Future<ArtistDto?> getArtistProfile(String uid);

  Future<String> uploadPicture(String file, String uid);
}
