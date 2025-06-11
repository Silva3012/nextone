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

  FirebaseArtistAuth(this._firebaseAuth, this._firestore);
  @override
  @override
  Future<ArtistDto?> getArtistProfile(String uid) async {
    try {
      final artistDoc = await _firestore.collection('artists').doc(uid).get();
      if (artistDoc.exists) {
        final artistData = artistDoc.data() as Map<String, dynamic>;

        return ArtistDto.fromJson(artistData);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> logInWithEmailAndPassword(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
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
  Future<void> signUpWithEmailAndPassword(
      String email, String password, String? username) async {
    try {
      final artistCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      final uid = artistCredential.user!.uid;

      final artist = ArtistDto(
        uid: uid,
        email: email,
        username: username ?? '',
        profilePictureUrl: '',
        biography: '',
        genre: '',
        supporterCount: 0,
      );

      await _firestore.collection('artists').doc(uid).set(artist.toJson());
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
  Stream<User?> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser;
      return user;
    });
  }
}
