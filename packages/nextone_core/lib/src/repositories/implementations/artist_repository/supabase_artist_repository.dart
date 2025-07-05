import 'dart:developer';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';

import 'package:nextone_core/nextone_core_export.dart';

@LazySingleton(as: IArtistRepository)
class SupabaseArtistRepository implements IArtistRepository {
  final SupabaseClient _supabaseClient;

  SupabaseArtistRepository({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<ArtistDto?> getArtist({required String artistId}) async {
    try {
      final response = await _supabaseClient
          .from('artists')
          .select()
          .eq('artist_id', artistId)
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
  Future<void> updateProdilePictureUrl({
    required String artistId,
    required String profilePictureUrl,
  }) async {
    try {
      await _supabaseClient.from('artists').update(
          {'profile_picture_url': profilePictureUrl}).eq('artist_id', artistId);
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
      final file = await _supabaseClient.storage
          .from('artist-profiles')
          .upload('$artistId/profile.jpg', File(filePath));

      final publicUrl =
          _supabaseClient.storage.from('artist-profiles').getPublicUrl(file);

      return publicUrl;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
