import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:just_audio/just_audio.dart';
import 'package:nextone/core/constants/spacing_constants.dart';

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
  late final AudioPlayer _audioPlayer;
  late int _currentIndex;
  late TrackDto _currentTrack;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialTrackindex;
    _currentTrack = widget.tracks[_currentIndex];
    _audioPlayer = AudioPlayer();

    _playCurrentTrack();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentTrack.title),
      ),
      body: Padding(
        padding: paddingAll16,
        child: Column(
          children: [
            // Cover art
            if (_currentTrack.coverArtUrl.isNotEmpty)
              Image.network(
                _currentTrack.coverArtUrl,
                height: 250,
              ),
            height24,
            // Track title
            Text(
              _currentTrack.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            height24,
            // Playback controls and progress bar
            StreamBuilder<Duration?>(
              stream: _audioPlayer.durationStream,
              builder: (context, snapshotDuration) {
                final duration = snapshotDuration.data ?? Duration.zero;

                return StreamBuilder<Duration>(
                  stream: _audioPlayer.positionStream,
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
                            _audioPlayer
                                .seek(Duration(milliseconds: value.toInt()));
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

            // Play/Pause button
            StreamBuilder<PlayerState>(
                stream: _audioPlayer.playerStateStream,
                builder: (context, snapshot) {
                  final playerState = snapshot.data;
                  final playing = playerState?.playing ?? false;
                  final processingState = playerState?.processingState;

                  if (processingState == ProcessingState.loading ||
                      processingState == ProcessingState.buffering) {
                    return const CircularProgressIndicator();
                  } else if (playing) {
                    return IconButton(
                      icon: const Icon(Icons.pause_circle_filled, size: 64),
                      onPressed: _togglePlayPause,
                    );
                  } else {
                    return IconButton(
                      icon: const Icon(Icons.play_circle_filled, size: 64),
                      onPressed: _togglePlayPause,
                    );
                  }
                })
          ],
        ),
      ),
    );
  }

  void _togglePlayPause() {
    if (_audioPlayer.playing) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
  }

  Future<void> _playCurrentTrack() async {
    try {
      await _audioPlayer.setUrl(_currentTrack.audioUrl);
      _audioPlayer.play();
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading track: ${e.toString()}')));
    }
  }
}

String _formatDuration(Duration duration) {
  final minutes = duration.inMinutes;
  final seconds = duration.inSeconds % 60;

  final secondsStr = seconds < 10 ? '0$seconds' : '$seconds';
  return '$minutes:$secondsStr';
}
