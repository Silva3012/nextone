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

import '../../application/artist_dashboard/artist_dashboard_bloc.dart' as _i308;
import '../../application/auth/auth_bloc.dart' as _i228;
import '../../application/onboarding_ai/onboarding_ai_bloc.dart' as _i704;
import '../../data/repositories/implementations/ai_content_service/ai_content_service.dart'
    as _i397;
import '../../data/repositories/implementations/artist_repository/artist_repository.dart'
    as _i148;
import '../../data/repositories/implementations/user_repository/user_repository.dart'
    as _i537;
import '../../data/repositories/interfaces/ai_content_service/i_ai_content_service.dart'
    as _i102;
import '../../data/repositories/interfaces/artist_repository/i_artist_repository.dart'
    as _i1065;
import '../../data/repositories/interfaces/user_repository/i_user_repository.dart'
    as _i95;
import '../../data/services/implementations/audio/just_audio_service.dart'
    as _i146;
import '../../data/services/implementations/auth/auth_service.dart' as _i1008;
import '../../data/services/interfaces/audio/i_audio_service.dart' as _i924;
import '../../data/services/interfaces/auth/i_auth_service.dart' as _i191;
import '../../data/services/services_exports.dart' as _i1071;
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
    gh.lazySingleton<_i924.IAudioService>(() => _i146.JustAudioService());
    gh.lazySingleton<_i102.IAiContentService>(() => _i397.AiContentService());
    gh.lazySingleton<_i1071.IAuthService>(
        () => _i1008.AuthService(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i95.IUserRepository>(
        () => _i537.UserRepository(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i1065.IArtistRepository>(() =>
        _i148.ArtistRepository(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i704.OnboardingAiBloc>(
        () => _i704.OnboardingAiBloc(gh<_i102.IAiContentService>()));
    gh.lazySingleton<_i228.AuthBloc>(() => _i228.AuthBloc(
          gh<_i191.IAuthService>(),
          gh<_i95.IUserRepository>(),
          gh<_i1065.IArtistRepository>(),
        ));
    gh.lazySingleton<_i308.ArtistDashboardBloc>(
        () => _i308.ArtistDashboardBloc(gh<_i1065.IArtistRepository>()));
    return this;
  }
}

class _$SupabaseModule extends _i464.SupabaseModule {}

class _$AudioModule extends _i464.AudioModule {}
