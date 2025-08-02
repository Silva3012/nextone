import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:models/models.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';
import 'package:nextone/core/constants/spacing_constants.dart';
import 'package:nextone/presentation/shared/widgets/nextone_button.dart';
import 'package:nextone_core/nextone_core_export.dart';

@RoutePage()
class ArtistDashboardPage extends HookWidget {
  const ArtistDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);

    // Get the current userId from AuthBloc
    final authState = context.watch<AuthBloc>().state;
    final artistId = authState.maybeWhen(
      authenticated: (user) => user.uid,
      orElse: () => '',
    );

    // Trigger artist data load on first render
    useEffect(() {
      if (artistId.isNotEmpty) {
        context.read<ArtistDashboardBloc>().add(
              ArtistDashboardEvent.onGetTracks(artistId: artistId),
            );
      }
      return null;
    }, [artistId]);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: NextOneColors.surface,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: NextOneColors.textPrimary,
              ),
              onPressed: () {
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.onSignOutRequested());
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: 50,
              color: NextOneColors.surface,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: BlocBuilder<ArtistDashboardBloc, ArtistDashboardState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (message) => Center(
                      child: Text(
                        message,
                        style: NextOneTextStyles.bodyText1,
                      ),
                    ),
                    loaded: (tracks, stageName, supporterCount, earnings) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: paddingAll16,
                            child: Row(
                              children: [
                                height120,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    height64,
                                    Text(
                                      stageName,
                                      style: NextOneTextStyles.headline,
                                    ),
                                    height8,
                                    Text(
                                      'Total Earnings: R${earnings.toStringAsFixed(2)}',
                                      style: NextOneTextStyles.bodyText1,
                                    ),
                                    height8,
                                    Text(
                                      'Supporters: $supporterCount',
                                      style:
                                          NextOneTextStyles.bodyTextSecondary,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: NextoneButton(
                              text: 'Upload',
                              type: NextoneButtonType.primary,
                              onPressed: () {},
                            ),
                          ),
                          height16,
                          Expanded(
                              child: Column(
                            children: [
                              TabBar(
                                controller: tabController,
                                indicatorColor: Colors.red,
                                labelColor: Colors.red,
                                unselectedLabelColor: Colors.grey,
                                tabs: const [
                                  Tab(text: 'Tracks'),
                                  Tab(text: 'Earnings'),
                                  Tab(text: 'SRM'),
                                ],
                              ),
                              Expanded(
                                  child: TabBarView(
                                      controller: tabController,
                                      children: [
                                    _TracksTab(tracks: tracks),
                                    const Center(
                                        child: Text('Earnings View',
                                            style: TextStyle(
                                                color: Colors.white))),
                                    const Center(
                                        child: Text('SRM View',
                                            style: TextStyle(
                                                color: Colors.white))),
                                  ]))
                            ],
                          )),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            const Positioned(
              left: 10,
              child: CircleAvatar(
                radius: 64,
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 90, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TracksTab extends StatelessWidget {
  const _TracksTab({required this.tracks});

  final List<TrackDto> tracks;

  @override
  Widget build(BuildContext context) {
    if (tracks.isEmpty) {
      return const Center(
        child: Text(
          'No tracks uploaded yet',
          style: TextStyle(color: NextOneColors.textSecondary, fontSize: 16),
        ),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: tracks.length,
      itemBuilder: (context, index) {
        final track = tracks[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(track.coverArtUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(track.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(track.genre ?? 'Not Specified',
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 14)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.play_arrow,
                            size: 16, color: Colors.grey),
                        const SizedBox(width: 4),
                        Text(track.playCount.toString(),
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
