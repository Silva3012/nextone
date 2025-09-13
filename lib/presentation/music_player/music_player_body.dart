import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:models/models.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone_core/nextone_core_export.dart';

class MusicPlayerBody extends StatelessWidget {
  const MusicPlayerBody({
    super.key,
    required this.tracks,
    required this.currentIndex,
    required this.audioService,
    required this.scrollController,
  });

  final List<TrackDto> tracks;
  final int currentIndex;
  final IAudioService audioService;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Padding(
        padding: paddingAll16,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Drag Handle
            Container(
              width: 40,
              height: 5,
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            // Cover Art
            StreamBuilder<TrackDto?>(
              stream: audioService.currentTrack$,
              builder: (context, snapshot) {
                final track = snapshot.data ?? tracks[currentIndex];
                if (track.coverArtUrl.isEmpty) return const SizedBox.shrink();
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(track.coverArtUrl, height: 250),
                );
              },
            ),
            height24,

            // Track Title
            StreamBuilder<TrackDto?>(
              stream: audioService.currentTrack$,
              builder: (context, snapshot) {
                final track = snapshot.data ?? tracks[currentIndex];
                return Text(
                  track.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                );
              },
            ),
            height24,

            // Progress bar & duration
            StreamBuilder<Duration?>(
              stream: audioService.duration$,
              builder: (context, snapshotDuration) {
                final duration = snapshotDuration.data ?? Duration.zero;
                return StreamBuilder<Duration>(
                  stream: audioService.position$,
                  builder: (context, snapshotPosition) {
                    var position = snapshotPosition.data ?? Duration.zero;
                    if (position > duration) position = duration;

                    return Column(
                      children: [
                        Slider(
                          min: 0,
                          max: duration.inMilliseconds.toDouble(),
                          value: position.inMilliseconds.toDouble(),
                          onChanged: (value) {
                            audioService.seek(
                              position: Duration(milliseconds: value.toInt()),
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(_formatDuration(position),
                                style: const TextStyle(color: Colors.white70)),
                            Text(_formatDuration(duration),
                                style: const TextStyle(color: Colors.white70)),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            height24,

            // Play/Pause Button
            StreamBuilder<PlaybackButtonState>(
              stream: audioService.playbackButtonState$,
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state == null ||
                    state.processingState == ProcessingState.loading ||
                    state.processingState == ProcessingState.buffering) {
                  return const CircularProgressIndicator();
                }
                if (state.isPlaying) {
                  return IconButton(
                    onPressed: () => audioService.pause(),
                    icon: const Icon(Icons.pause_circle_filled,
                        size: 64, color: Colors.white),
                  );
                } else {
                  return IconButton(
                    onPressed: () => audioService.play(),
                    icon: const Icon(Icons.play_circle_filled,
                        size: 64, color: Colors.white),
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
