import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:nextone/core/supabase/supabase_config.dart';

class SupabaseInitializer {
  static Future<void> initialize() async {
    await Supabase.initialize(
      url: SupabaseConfig.supabaseUrl,
      anonKey: SupabaseConfig.supabaseAnonKey,
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}
