import 'package:just_audio/just_audio.dart';
import 'package:nextone/data/models/models.dart';
import 'package:nextone/data/services/implementations/audio/just_audio_service.dart';

abstract class IAudioService {
  Stream<bool> get isPlaying$;
  Stream<Duration> get position$;
  Stream<Duration?> get duration$;
  Stream<TrackDto?> get currentTrack$;
  Stream<ProcessingState> get processingState$;
  Stream<PlaybackButtonState> get playbackButtonState$;
  Stream<bool> get shuffleModeEnabled$;
  Stream<LoopMode> get loopMode$;

  Future<void> playTrack({required TrackDto track});
  Future<void> playTracks(
      {required List<TrackDto> tracks, required int initialIndex});
  Future<void> play();
  Future<void> pause();
  Future<void> seek({required Duration position});
  Future<void> stop();

  Future<void> nextTrack();
  Future<void> previousTrack();
  Future<void> toggleShuffleMode();
  Future<void> cycleLoopMode();

  void dispose();
}
