import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:models/models.dart';
import 'package:nextone_core/nextone_core_export.dart';

part 'artist_dashboard_event.dart';
part 'artist_dashboard_state.dart';

part 'artist_dashboard_bloc.freezed.dart';

@LazySingleton()
class ArtistDashboardBloc
    extends Bloc<ArtistDashboardEvent, ArtistDashboardState> {
  final IArtistRepository _artistRepository;
  ArtistDashboardBloc(this._artistRepository)
      : super(const ArtistDashboardState.initial()) {
    on<ArtistDashboardEvent>((event, emit) async {
      await event.map(onGetTracks: (e) async {
        emit(const ArtistDashboardState.loading());
        try {
          final artist =
              await _artistRepository.getArtist(artistId: e.artistId);
          final tracks =
              await _artistRepository.getArtistTracks(artistId: e.artistId);

          emit(ArtistDashboardState.loaded(
              stageName: artist?.stageName ?? '',
              tracks: tracks,
              supporterCount: artist?.supporterCount ?? 0,
              earnings: 0.0));
        } catch (e) {
          emit(ArtistDashboardState.error(message: e.toString()));
        }
      });
    });
  }
}
