import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:models/models.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone_core/nextone_core_export.dart';

@RoutePage()
class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage(
      {super.key, required this.tracks, required this.initialTrackindex});

  final List<TrackDto> tracks;
  final int initialTrackindex;

  @override
  State<MusicPlayerPage> createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  late final IAudioService _audioService;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _audioService = nextOneCoreSL.get<IAudioService>();
    _currentIndex = widget.initialTrackindex;
    _audioService.playTracks(
        tracks: widget.tracks, initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
            stream: _audioService.currentTrack$,
            builder: (context, snapshot) {
              final track = snapshot.data ?? widget.tracks[_currentIndex];
              return Text(track.title);
            }),
      ),
      body: Padding(
        padding: paddingAll16,
        child: Column(
          children: [
            // Cover art
            StreamBuilder<TrackDto?>(
              stream: _audioService.currentTrack$,
              builder: (context, snapshot) {
                final track = snapshot.data ?? widget.tracks[_currentIndex];
                if (track.coverArtUrl.isEmpty) return Container();
                return Image.network(track.coverArtUrl, height: 250);
              },
            ),
            height24,
            // Track title

            StreamBuilder<TrackDto?>(
              stream: _audioService.currentTrack$,
              builder: (context, snapshot) {
                final track = snapshot.data ?? widget.tracks[_currentIndex];
                return Text(
                  track.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            height24,
            // Playback controls and progress bar
            StreamBuilder<Duration?>(
              stream: _audioService.duration$,
              builder: (context, snapshotDuration) {
                final duration = snapshotDuration.data ?? Duration.zero;

                return StreamBuilder<Duration>(
                  stream: _audioService.position$,
                  builder: (context, snapshotPosition) {
                    var position = snapshotPosition.data ?? Duration.zero;
                    if (position > duration) {
                      position = duration;
                    }

                    return Column(
                      children: [
                        Slider(
                          min: 0,
                          max: duration.inMilliseconds.toDouble(),
                          value: position.inMilliseconds.toDouble(),
                          onChanged: (value) {
                            _audioService.seek(
                                position:
                                    Duration(milliseconds: value.toInt()));
                          },
                        ),
                        Padding(
                          padding: paddingHorizontal24,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_formatDuration(position)),
                              Text(_formatDuration(duration)),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            height24,

            StreamBuilder<PlaybackButtonState>(
              stream: _audioService.playbackButtonState$,
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state == null) {
                  return const CircularProgressIndicator();
                }
                if (state.processingState == ProcessingState.loading ||
                    state.processingState == ProcessingState.buffering) {
                  return const CircularProgressIndicator();
                }
                if (state.isPlaying) {
                  return IconButton(
                      onPressed: () => _audioService.pause(),
                      icon: const Icon(Icons.pause_circle_filled, size: 64));
                } else {
                  return IconButton(
                    onPressed: () => _audioService.play(),
                    icon: const Icon(Icons.play_circle_filled, size: 64),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

String _formatDuration(Duration duration) {
  final minutes = duration.inMinutes;
  final seconds = duration.inSeconds % 60;

  final secondsStr = seconds < 10 ? '0$seconds' : '$seconds';
  return '$minutes:$secondsStr';
}
