import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nextone/application/onboarding_ai/onboarding_ai_bloc.dart';
import 'package:nextone/data/repositories/interfaces/i_ai_content_service.dart';

class _MockAiContentService extends Mock implements IAiContentService {}

void main() {
  late _MockAiContentService aiContentService;

  const name = 'Nova';
  const location = 'Johannesburg';
  const genre = 'Afropop';
  const generatedBio = 'Nova is an Afropop artist from Johannesburg.';

  setUp(() {
    aiContentService = _MockAiContentService();
  });

  OnboardingAiBloc buildBloc() => OnboardingAiBloc(aiContentService);

  test('emits loading then generated bio when generation succeeds', () async {
      when(
        () => aiContentService.generateBiography(
          name: name,
          location: location,
          genre: genre,
        ),
      ).thenAnswer((_) async => generatedBio);

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<OnboardingAiState>[
          OnboardingAiState.initial().copyWith(
            isLoading: true,
            hasError: false,
            errorMessage: null,
            generatedBio: null,
          ),
          OnboardingAiState.initial().copyWith(
            isLoading: false,
            hasError: false,
            errorMessage: null,
            generatedBio: generatedBio,
          ),
        ]),
      );

      bloc.add(
        const OnboardingAiEvent.generateBio(
          name: name,
          location: location,
          genre: genre,
        ),
      );

      await expectation;
      await bloc.close();
    });

  test('emits loading then error state when generation fails', () async {
      when(
        () => aiContentService.generateBiography(
          name: name,
          location: location,
          genre: genre,
        ),
      ).thenThrow(Exception('generation failed'));

      final bloc = buildBloc();

      final expectation = expectLater(
        bloc.stream,
        emitsInOrder(<OnboardingAiState>[
          OnboardingAiState.initial().copyWith(
            isLoading: true,
            hasError: false,
            errorMessage: null,
            generatedBio: null,
          ),
          OnboardingAiState.initial().copyWith(
            isLoading: false,
            hasError: true,
            errorMessage: 'Exception: generation failed',
            generatedBio: null,
          ),
        ]),
      );

      bloc.add(
        const OnboardingAiEvent.generateBio(
          name: name,
          location: location,
          genre: genre,
        ),
      );

      await expectation;
      await bloc.close();
    });
}
