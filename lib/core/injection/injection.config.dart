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
import 'package:nextone/application/artist_dashboard/artist_dashboard_bloc.dart'
    as _i705;
import 'package:nextone/application/auth/auth_bloc.dart' as _i382;
import 'package:nextone/application/onboarding_ai/onboarding_ai_bloc.dart'
    as _i890;
import 'package:nextone/core/injection/injection.dart' as _i706;
import 'package:nextone/data/repositories/implementations/ai_content_service.dart'
    as _i432;
import 'package:nextone/data/repositories/implementations/artist_repository.dart'
    as _i180;
import 'package:nextone/data/repositories/implementations/user_repository.dart'
    as _i636;
import 'package:nextone/data/repositories/interfaces/i_ai_content_service.dart'
    as _i1069;
import 'package:nextone/data/repositories/interfaces/i_artist_repository.dart'
    as _i941;
import 'package:nextone/data/repositories/interfaces/i_user_repository.dart'
    as _i148;
import 'package:nextone/data/services/implementations/audio/just_audio_service.dart'
    as _i969;
import 'package:nextone/data/services/implementations/auth/auth_service.dart'
    as _i521;
import 'package:nextone/data/services/interfaces/i_audio_service.dart' as _i479;
import 'package:nextone/data/services/interfaces/i_auth_service.dart' as _i311;
import 'package:nextone/data/services/services_exports.dart' as _i925;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;

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
    gh.lazySingleton<_i479.IAudioService>(() => _i969.JustAudioService());
    gh.lazySingleton<_i1069.IAiContentService>(() => _i432.AiContentService());
    gh.lazySingleton<_i925.IAuthService>(
        () => _i521.AuthService(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i941.IArtistRepository>(() =>
        _i180.ArtistRepository(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i890.OnboardingAiBloc>(
        () => _i890.OnboardingAiBloc(gh<_i1069.IAiContentService>()));
    gh.lazySingleton<_i148.IUserRepository>(
        () => _i636.UserRepository(supabaseClient: gh<_i454.SupabaseClient>()));
    gh.lazySingleton<_i382.AuthBloc>(() => _i382.AuthBloc(
          gh<_i311.IAuthService>(),
          gh<_i148.IUserRepository>(),
          gh<_i941.IArtistRepository>(),
        ));
    gh.lazySingleton<_i705.ArtistDashboardBloc>(
        () => _i705.ArtistDashboardBloc(gh<_i941.IArtistRepository>()));
    return this;
  }
}

class _$SupabaseModule extends _i706.SupabaseModule {}

class _$AudioModule extends _i706.AudioModule {}
