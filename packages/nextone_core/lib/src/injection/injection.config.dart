// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:audio_service/audio_service.dart' as _i87;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

import '../../nextone_core_export.dart' as _i315;
import '../application/artist_dashboard/artist_dashboard_bloc.dart' as _i689;
import '../application/auth/auth_bloc.dart' as _i122;
import '../application/onboarding_ai/onboarding_ai_bloc.dart' as _i356;
import '../repositories/implementations/ai_content_service/ai_content_service.dart'
    as _i951;
import '../repositories/implementations/artist_repository/artist_repository.dart'
    as _i656;
import '../repositories/implementations/user_repository/user_repository.dart'
    as _i411;
import '../repositories/interfaces/ai_content_service/i_ai_content_service.dart'
    as _i195;
import '../repositories/repositories_export.dart' as _i233;
import '../services/implementations/audio/just_audio_service.dart' as _i859;
import '../services/implementations/auth/auth_service.dart' as _i545;
import '../services/services_exports.dart' as _i668;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final supabaseModule = _$SupabaseModule();
    final audioModule = _$AudioModule();
    gh.lazySingleton<_i454.SupabaseClient>(() => supabaseModule.supabaseClient);
    await gh.lazySingletonAsync<_i87.AudioHandler>(
      () => audioModule.audioHandler,
      preResolve: true,
    );
    gh.lazySingleton<_i315.IAudioService>(() => _i859.JustAudioService());
    gh.lazySingleton<_i195.IAiContentService>(() => _i951.AiContentService());
    gh.lazySingleton<_i315.IUserRepository>(
        () => _i411.UserRepository(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i315.IArtistRepository>(() =>
        _i656.ArtistRepository(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i356.OnboardingAiBloc>(
        () => _i356.OnboardingAiBloc(gh<_i315.IAiContentService>()));
    gh.lazySingleton<_i668.IAuthService>(
        () => _i545.AuthService(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i689.ArtistDashboardBloc>(
        () => _i689.ArtistDashboardBloc(gh<_i315.IArtistRepository>()));
    gh.lazySingleton<_i122.AuthBloc>(() => _i122.AuthBloc(
          gh<_i668.IAuthService>(),
          gh<_i233.IUserRepository>(),
          gh<_i233.IArtistRepository>(),
        ));
    return this;
  }
}

class _$SupabaseModule extends _i464.SupabaseModule {}

class _$AudioModule extends _i464.AudioModule {}
