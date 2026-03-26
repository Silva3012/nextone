import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nextone/application/artist_dashboard/artist_dashboard_bloc.dart';
import 'package:nextone/data/models/models.dart';
import 'package:nextone/data/repositories/interfaces/artist_repository/i_artist_repository.dart';

class _MockArtistRepository extends Mock implements IArtistRepository {}

void main() {
  late _MockArtistRepository artistRepository;

  const artistId = 'artist-123';
  final artist = ArtistDto(
    userId: 'user-123',
    artistId: artistId,
    stageName: 'Nova',
    location: 'Johannesburg',
    biography: 'Independent artist',
    genre: 'Afropop',
    createdAt: DateTime(2024),
  );
  final tracks = [
    const TrackDto(
      trackId: 'track-1',
      artistId: artistId,
      title: 'First Light',
      audioUrl: 'https://example.com/audio.mp3',
      coverArtUrl: 'https://example.com/cover.jpg',
      playCount: 10,
      genre: 'Afropop',
    ),
  ];

  setUp(() {
    artistRepository = _MockArtistRepository();
  });

  ArtistDashboardBloc buildBloc() => ArtistDashboardBloc(artistRepository);

  test('emits loading then loaded state when track fetch succeeds', () async {
      when(() => artistRepository.getArtist(artistId: artistId))
          .thenAnswer((_) async => artist);
      when(() => artistRepository.getArtistTracks(artistId: artistId))
          .thenAnswer((_) async => tracks);

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<dynamic>[
          ArtistDashboardState.initial().copyWith(
            isLoading: true,
            errorMessage: null,
            hasError: false,
          ),
          ArtistDashboardState.initial().copyWith(
            artist: artist,
            tracks: tracks,
            isLoading: false,
            errorMessage: null,
            hasError: false,
          ),
        ]),
      );

      bloc.add(const ArtistDashboardEvent.onGetTracks(artistId: artistId));

      await expectation;
      await bloc.close();
    });

  test('emits loading then error state when track fetch fails', () async {
      when(() => artistRepository.getArtist(artistId: artistId))
          .thenThrow(Exception('failed to load tracks'));

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<dynamic>[
          ArtistDashboardState.initial().copyWith(
            isLoading: true,
            errorMessage: null,
            hasError: false,
          ),
          isA<ArtistDashboardState>()
              .having((state) => state.isLoading, 'isLoading', false)
              .having((state) => state.hasError, 'hasError', true)
              .having(
                (state) => state.errorMessage,
                'errorMessage',
                'Exception: failed to load tracks',
              ),
        ]),
      );

      bloc.add(const ArtistDashboardEvent.onGetTracks(artistId: artistId));

      await expectation;
      await bloc.close();
    });
}
