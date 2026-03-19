import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:marquee/marquee.dart';
import 'package:nextone/nextone.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/music_player/music_player_overlay.dart';

class MiniPlayerBar extends StatelessWidget {
  const MiniPlayerBar({super.key});

  @override
  Widget build(BuildContext context) {
    final audioService = nextOneCoreSL.get<IAudioService>();

    return StreamBuilder<TrackDto?>(
      stream: audioService.currentTrack$,
      builder: (context, snapShotTrack) {
        final track = snapShotTrack.data;
        if (track == null) return const SizedBox.shrink();

        return Container(
          padding: paddingHorizontal12vertical6,
          decoration: BoxDecoration(
            color: NextOneColors.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 6,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            children: [
              // Cover art
              if (track.coverArtUrl.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    track.coverArtUrl,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                )
              else
                const SizedBox(width: 40, height: 40),

              const SizedBox(width: 12),

              // Track title with marquee
              Expanded(
                child: SizedBox(
                  height: 20,
                  child: Marquee(
                    text: track.title,
                    style: NextOneTextStyles.bodyText1
                        .copyWith(color: NextOneColors.textPrimary),
                    scrollAxis: Axis.horizontal,
                    blankSpace: 50.0,
                    velocity: 30.0,
                    pauseAfterRound: const Duration(seconds: 1),
                    startPadding: 10.0,
                  ),
                ),
              ),

              // Previous button
              IconButton(
                icon: const Icon(Icons.skip_previous,
                    color: NextOneColors.textPrimary),
                onPressed: () => audioService.previousTrack(),
              ),

              // Play/Pause Button
              StreamBuilder<PlaybackButtonState>(
                stream: audioService.playbackButtonState$,
                builder: (context, snapshotState) {
                  final state = snapshotState.data;
                  if (state == null ||
                      state.processingState == ProcessingState.loading ||
                      state.processingState == ProcessingState.buffering) {
                    return const SizedBox(
                      height: 28,
                      width: 28,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    );
                  }
                  if (state.isPlaying) {
                    return IconButton(
                      icon: const Icon(Icons.pause,
                          color: NextOneColors.textPrimary),
                      onPressed: () => audioService.pause(),
                    );
                  } else {
                    return IconButton(
                      icon: const Icon(Icons.play_arrow,
                          color: NextOneColors.textPrimary),
                      onPressed: () => audioService.play(),
                    );
                  }
                },
              ),

              // Next button
              IconButton(
                icon: const Icon(Icons.skip_next,
                    color: NextOneColors.textPrimary),
                onPressed: () => audioService.nextTrack(),
              ),
            ],
          ),
        ).gestureDetector(onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => MusicPlayerOverlay(
              audioService: audioService,
              tracks: [track],
              initialTrackIndex: 0,
            ),
          );
        });
      },
    );
  }
}

// Small helper to make Container tappable
extension _MiniPlayerTap on Widget {
  Widget gestureDetector({required VoidCallback onTap}) => GestureDetector(
      behavior: HitTestBehavior.opaque, onTap: onTap, child: this);
}
