import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:nextone_core/src/services/services_exports.dart';

@LazySingleton(as: IAuthService)
class SupabaseAuthService implements IAuthService {
  final SupabaseClient _supabaseClient;

  SupabaseAuthService({required SupabaseClient supabaseClient})
      : _supabaseClient = supabaseClient;

  @override
  Stream<String?> get getAuthStateChanges =>
      _supabaseClient.auth.onAuthStateChange.map((data) {
        final user = data.session?.user;
        return user?.id;
      });

  @override
  Future<String> logInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw Exception('Login failed: No user returned');
      }

      return response.user!.id;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await _supabaseClient.auth.resetPasswordForEmail(email);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _supabaseClient.auth.signOut();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<String> signUpWithEmailAndPassword({
    required String email,
    required String password,
    String? username,
  }) async {
    try {
      final response = await _supabaseClient.auth.signUp(
        email: email,
        password: password,
        data: username != null ? {'username': username} : null,
      );

      if (response.user == null) {
        throw Exception('Sign up failed: No user returned');
      }

      return response.user!.id;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
