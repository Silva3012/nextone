import 'package:just_audio/just_audio.dart';
import 'package:models/models.dart';
import 'package:nextone_core/nextone_core_export.dart';

abstract class IAudioService {
  Stream<bool> get isPlaying$;
  Stream<Duration> get position$;
  Stream<Duration?> get duration$;
  Stream<TrackDto?> get currentTrack$;
  Stream<ProcessingState> get processingState$;
  Stream<PlaybackButtonState> get playbackButtonState$;

  Future<void> playTrack({required TrackDto track});
  Future<void> playTracks(
      {required List<TrackDto> tracks, required int initialIndex});
  Future<void> play();
  Future<void> pause();
  Future<void> seek({required Duration position});
  Future<void> stop();
  void dispose();
}
