import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
import 'package:nextone_core/nextone_core_export.dart';

@LazySingleton(as: IUserRepository)
class SupabaseUserRepository implements IUserRepository {
  final SupabaseClient _supabaseClient;

  SupabaseUserRepository({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Future<UserCredentialsDto?> getUser({required String userId}) async {
    try {
      final response = await _supabaseClient
          .from('users')
          .select()
          .eq('uid', userId)
          .single();

      return UserCredentialsDto.fromJson(response);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> saveUserWithRole({
    required UserCredentialsDto userCredentials,
  }) async {
    try {
      await _supabaseClient.from('users').upsert({
        ...userCredentials.toJson(),
        'created_at': DateTime.now().toIso8601String(),
      });
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
