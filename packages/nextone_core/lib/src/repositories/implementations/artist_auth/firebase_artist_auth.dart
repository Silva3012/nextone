import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';

import 'package:nextone_core/nextone_core_export.dart';

@LazySingleton(as: IFirebaseArtistAuth)
class FirebaseArtistAuth implements IFirebaseArtistAuth {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseUserDtoMapper _firebaseUserDtoMapper;

  FirebaseArtistAuth(
      this._firebaseAuth, this._firestore, this._firebaseUserDtoMapper);
  @override
  Future<ArtistDto?> getArtistProfile(String uid) async {
    try {
      final artistDoc = await _firestore.collection('artists').doc(uid).get();
      if (!artistDoc.exists) return null;

      return ArtistDto.fromJson(artistDoc.data()!);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<ArtistDto> logInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user!;
      final artistProfile = await getArtistProfile(user.uid);
      if (artistProfile == null) {
        throw Exception('Artist profile not found');
      }

      return artistProfile;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  // @override
  // Future<void> setUserData(ArtistDto artist) {
  //   // TODO: implement setUserData
  //   throw UnimplementedError();
  // }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<ArtistDto> signUpWithEmailAndPassword(
      {required String email,
      required String password,
      String? username}) async {
    try {
      final userCeredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      final firebaseUser = userCeredential.user!;
      final firebaseUserDto = FirebaseUserDto.fromFirebaseUser(firebaseUser);

      // Map to ArtistDto using AutoMappr
      final artist = _firebaseUserDtoMapper
          .convert<FirebaseUserDto, ArtistDto>(firebaseUserDto)
          .copyWith(
            username: username ?? '',
            profilePictureUrl: '',
            biography: '',
            genre: '',
            supporterCount: 0,
          );

      await _firestore
          .collection('artists')
          .doc(artist.uid)
          .set(artist.toJson());

      return artist;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<String> uploadPicture(String file, String uid) {
    // TODO: implement uploadPicture
    throw UnimplementedError();
  }

  @override

  /// Stream of [FirebaseUser] which will emit the current user when
  /// the authentication state changes
  ///
  Stream<ArtistDto?> get user {
    return _firebaseAuth.authStateChanges().asyncMap((firebaseUser) async {
      if (firebaseUser == null) return null;

      final firebaseUserDto = FirebaseUserDto(
        uid: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        displayName: firebaseUser.displayName ?? '',
        photoUrl: firebaseUser.photoURL ?? '',
      );

      final artist = _firebaseUserDtoMapper
          .convert<FirebaseUserDto, ArtistDto>(firebaseUserDto);

      final profile = await getArtistProfile(firebaseUser.uid);
      return profile ?? artist;
    });
  }
}
