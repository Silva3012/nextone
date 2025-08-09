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
      : super(ArtistDashboardState.initial()) {
    on<ArtistDashboardEvent>((event, emit) async {
      await event.map(onGetTracks: (e) async {
        emit(state.copyWith(
          isLoading: true,
          errorMessage: null,
          hasError: false,
        ));
        try {
          final artist =
              await _artistRepository.getArtist(artistId: e.artistId);
          final tracks =
              await _artistRepository.getArtistTracks(artistId: e.artistId);

          emit(state.copyWith(
            artist: artist ?? ArtistDto.empty(),
            tracks: tracks,
            isLoading: false,
            errorMessage: null,
            hasError: false,
          ));
        } catch (e) {
          emit(state.copyWith(
            isLoading: false,
            errorMessage: e.toString(),
            hasError: true,
          ));
        }
      });
    });
  }
}
