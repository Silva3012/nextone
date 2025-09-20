import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/presentation/music_player/music_player_body.dart';
import 'package:nextone_core/nextone_core_export.dart';

class MusicPlayerOverlay extends StatefulWidget {
  const MusicPlayerOverlay({
    super.key,
    required this.tracks,
    this.initialTrackIndex,
  });

  final List<TrackDto> tracks;
  final int? initialTrackIndex;

  @override
  State<MusicPlayerOverlay> createState() => _MusicPlayerOverlayState();
}

class _MusicPlayerOverlayState extends State<MusicPlayerOverlay> {
  late final IAudioService _audioService;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _audioService = nextOneCoreSL.get<IAudioService>();

    // If initialTrackIndex is not null, use it to set the current index
    _currentIndex = widget.initialTrackIndex ?? 0;

    _audioService.playTracks(
      tracks: widget.tracks,
      initialIndex: _currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: NextOneColors.surface,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24),
            ),
          ),
          child: MusicPlayerBody(
            tracks: widget.tracks,
            currentIndex: _currentIndex,
            audioService: _audioService,
            scrollController: scrollController,
          ),
        );
      },
    );
  }
}
