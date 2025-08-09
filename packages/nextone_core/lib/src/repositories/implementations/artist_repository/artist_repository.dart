import 'dart:developer';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';

import 'package:nextone_core/nextone_core_export.dart';

@LazySingleton(as: IArtistRepository)
class ArtistRepository implements IArtistRepository {
  final SupabaseClient _supabaseClient;

  ArtistRepository({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<ArtistDto?> getArtist({required String artistId}) async {
    try {
      final response = await _supabaseClient
          .from('artists')
          .select()
          .eq('artistId', artistId)
          .single();

      return ArtistDto.fromJson(response);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> saveArtist({required ArtistDto artist}) async {
    try {
      await _supabaseClient.from('artists').upsert(artist.toJson());
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> updateProfilePictureUrl({
    required String artistId,
    required String profilePictureUrl,
  }) async {
    try {
      await _supabaseClient.from('artists').update(
          {'profilePictureUrl': profilePictureUrl}).eq('artistId', artistId);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<String> uploadProfileImage({
    required String artistId,
    required String filePath,
  }) async {
    try {
      final filePathInBucket = '$artistId/profile.jpg';

      await _supabaseClient.storage
          .from('artist-profile-images')
          .upload(filePathInBucket, File(filePath));

      final publicUrl = _supabaseClient.storage
          .from('artist-profile-images')
          .getPublicUrl(filePathInBucket);

      return publicUrl;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<List<TrackDto>> getArtistTracks({required String artistId}) async {
    try {
      final response = await _supabaseClient
          .from('tracks')
          .select()
          .eq('artistId', artistId);

      return response.map((track) => TrackDto.fromJson(track)).toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
