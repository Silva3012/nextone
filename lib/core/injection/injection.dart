import 'package:audio_service/audio_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nextone/core/injection/injection.config.dart';
import 'package:nextone/data/services/implementations/audio/audio_service_handler.dart';
import 'package:nextone/data/services/implementations/audio/just_audio_service.dart';

final nextOneCoreSL = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async => nextOneCoreSL.init();

@module
abstract class SupabaseModule {
  @lazySingleton
  SupabaseClient get supabaseClient => Supabase.instance.client;
}

@module
abstract class AudioModule {
  @preResolve
  @lazySingleton
  Future<AudioHandler> get audioHandler async {
    final justAudioService = JustAudioService();
    return await AudioService.init(
      builder: () => AudioServiceHandler(justAudioService),
      config: const AudioServiceConfig(
        androidNotificationChannelId: 'com.nextone.channel.audio',
        androidNotificationChannelName: 'NextOne Audio',
        androidNotificationOngoing: true,
        androidStopForegroundOnPause: true,
      ),
    );
  }
}
