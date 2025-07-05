// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

import '../../nextone_core_export.dart' as _i315;
import '../application/auth/auth_bloc.dart' as _i122;
import '../repositories/implementations/artist_repository/supabase_artist_repository.dart'
    as _i892;
import '../repositories/implementations/user_repository/supabase_user_repository.dart'
    as _i835;
import '../repositories/repositories_export.dart' as _i233;
import '../services/implementations/auth/supabase_auth_service.dart' as _i60;
import '../services/services_exports.dart' as _i668;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final supabaseModule = _$SupabaseModule();
    gh.lazySingleton<_i454.SupabaseClient>(() => supabaseModule.supabaseClient);
    gh.lazySingleton<_i315.IArtistRepository>(() =>
        _i892.SupabaseArtistRepository(
            supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i668.IAuthService>(() =>
        _i60.SupabaseAuthService(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i315.IUserRepository>(() => _i835.SupabaseUserRepository(
        supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i122.AuthBloc>(() => _i122.AuthBloc(
          gh<_i668.IAuthService>(),
          gh<_i233.IUserRepository>(),
          gh<_i233.IArtistRepository>(),
        ));
    return this;
  }
}

class _$SupabaseModule extends _i464.SupabaseModule {}
