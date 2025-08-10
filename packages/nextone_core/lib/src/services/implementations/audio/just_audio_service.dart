import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:models/models.dart';
import 'package:nextone_core/nextone_core_export.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IAudioService)
class JustAudioService implements IAudioService {
  final AudioPlayer _audioPlayer = AudioPlayer();

  final _isPlayingController = StreamController<bool>.broadcast();
  final _positionController = StreamController<Duration>.broadcast();
  final _durationController = StreamController<Duration?>.broadcast();
  final _currentTrackController = StreamController<TrackDto?>.broadcast();
  final _processingStateController =
      StreamController<ProcessingState>.broadcast();

  JustAudioService() {
    _audioPlayer.playerStateStream.listen((ps) {
      _isPlayingController.add(ps.playing);
      _processingStateController.add(ps.processingState);
    });
    _audioPlayer.positionStream.listen((p) => _positionController.add(p));
    _audioPlayer.durationStream.listen((d) => _durationController.add(d));
  }

  @override
  Stream<Duration?> get duration$ => _durationController.stream;
  @override
  Stream<bool> get isPlaying$ => _isPlayingController.stream;
  @override
  Stream<ProcessingState> get processingState$ =>
      _processingStateController.stream;

  @override
  Stream<PlaybackButtonState> get playbackButtonState$ =>
      Rx.combineLatest2<ProcessingState, bool, PlaybackButtonState>(
        processingState$,
        isPlaying$,
        (processingState, isPlaying) => PlaybackButtonState(
            processingState: processingState, isPlaying: isPlaying),
      );

  @override
  Stream<Duration> get position$ => _positionController.stream;
  @override
  Stream<TrackDto?> get currentTrack$ => _currentTrackController.stream;

  @override
  Future<void> playTrack({required TrackDto track}) async {
    _currentTrackController.add(track);
    await _audioPlayer.setUrl(track.audioUrl);
    await _audioPlayer.play();
  }

  @override
  Future<void> playTracks(
      {required List<TrackDto> tracks, required int initialIndex}) async {
    final sources = tracks
        .map((track) => AudioSource.uri(Uri.parse(track.audioUrl)))
        .toList();

    await _audioPlayer.setAudioSource(
      ConcatenatingAudioSource(children: sources),
      initialIndex: initialIndex,
    );

    _currentTrackController.add(tracks[initialIndex]);
    await _audioPlayer.play();
  }

  @override
  Future<void> play() => _audioPlayer.play();

  @override
  Future<void> pause() => _audioPlayer.pause();

  @override
  Future<void> seek({required Duration position}) =>
      _audioPlayer.seek(position);

  @override
  Future<void> stop() => _audioPlayer.stop();

  @override
  void dispose() {
    _audioPlayer.dispose();
    _isPlayingController.close();
    _positionController.close();
    _durationController.close();
    _currentTrackController.close();
    _processingStateController.close();
  }
}

class PlaybackButtonState {
  final ProcessingState processingState;
  final bool isPlaying;

  PlaybackButtonState({
    required this.processingState,
    required this.isPlaying,
  });
}
