import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:nextone_core/nextone_core_export.dart';

@LazySingleton(as: IArtistRepository)
class ArtistRespository implements IArtistRepository {
  ArtistRespository({required this.firestore, required this.firebaseStorage});

  final FirebaseFirestore firestore;
  final FirebaseStorage firebaseStorage;

  CollectionReference get _artists => firestore.collection('artists');

  @override
  Future<ArtistDto?> getArtist({required String artistId}) async {
    try {
      final doc = await _artists.doc(artistId).get();
      if (!doc.exists) return null;
      return ArtistDto.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> saveArtist({required ArtistDto artist}) async {
    try {
      await _artists.doc(artist.artistId).set(artist.toJson());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> updateProdilePictureUrl(
      {required String artistId, required String profilePictureUrl}) {
    // TODO: implement updateProdilePictureUrl
    throw UnimplementedError();
  }

  @override
  Future<String> uploadProfileImage(
      {required String artistId, required String filePath}) {
    // TODO: implement uploadProfileImage
    throw UnimplementedError();
  }
}
