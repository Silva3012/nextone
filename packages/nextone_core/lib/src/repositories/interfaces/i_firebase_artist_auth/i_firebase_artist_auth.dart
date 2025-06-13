import 'package:models/models.dart';

abstract class IFirebaseArtistAuth {
  Stream<ArtistDto?> get user;

  Future<void> logInWithEmailAndPassword(String email, String password);

  Future<void> signUpWithEmailAndPassword(
      String email, String password, String? username);

  Future<void> signOut();

  Future<void> resetPassword(String email);

  // Future<void> setUserData(ArtistDto artist);

  Future<ArtistDto?> getArtistProfile(String uid);

  Future<String> uploadPicture(String file, String uid);
}
