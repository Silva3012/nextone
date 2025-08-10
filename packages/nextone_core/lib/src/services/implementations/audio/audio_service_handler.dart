import 'package:audio_service/audio_service.dart';
import 'package:models/models.dart';
import 'package:nextone_core/nextone_core_export.dart';
import 'package:rxdart/rxdart.dart';

class AudioServiceHandler extends BaseAudioHandler with SeekHandler {
  final JustAudioService _audioService;

  AudioServiceHandler(this._audioService) {
    // Listen to isPlaying stream and update playbackState
    _audioService.isPlaying$.listen((isPlaying) {
      playbackState.add(playbackState.value.copyWith(
        playing: isPlaying,
        processingState: AudioProcessingState.ready,
      ));
    });

    // Listen to position and duration and update playbackState position
    Rx.combineLatest2<Duration, Duration?, PlaybackState>(
      _audioService.position$,
      _audioService.duration$,
      (position, duration) {
        return playbackState.value.copyWith(
          updatePosition: position,
          bufferedPosition: duration ?? Duration.zero,
          processingState: AudioProcessingState.ready,
        );
      },
    ).listen(playbackState.add);

    // Listen to currentTrack and update mediaItem for notication/lockscreen
    _audioService.currentTrack$.listen((track) {
      if (track == null) {
        mediaItem.add(null);
      } else {
        mediaItem.add(MediaItem(
          id: track.trackId,
          title: track.title,
          artist: track.audioUrl,
          artUri: Uri.parse(track.coverArtUrl),
        ));
      }
    });
  }

  @override
  Future<void> play() => _audioService.play();

  @override
  Future<void> pause() => _audioService.pause();

  @override
  Future<void> seek(Duration position) =>
      _audioService.seek(position: position);

  @override
  Future<void> stop() => _audioService.stop();

  @override
  Future<void> playMediaItem(MediaItem mediaItem) async {
    final track = TrackDto(
      trackId: mediaItem.id,
      artistId: mediaItem.artist ?? '',
      title: mediaItem.title,
      audioUrl: mediaItem.id,
      coverArtUrl: mediaItem.artUri.toString(),
    );
    await _audioService.playTrack(track: track);
  }
}
