import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nextone/data/repositories/interfaces/ai_content_service/i_ai_content_service.dart';

part 'onboarding_ai_event.dart';
part 'onboarding_ai_state.dart';

part 'onboarding_ai_bloc.freezed.dart';

@LazySingleton()
class OnboardingAiBloc extends Bloc<OnboardingAiEvent, OnboardingAiState> {
  final IAiContentService _aiContentService;

  OnboardingAiBloc(this._aiContentService)
      : super(OnboardingAiState.initial()) {
    on<OnboardingAiEvent>((event, emit) async {
      await event.map(
        generateBio: (e) async {
          emit(state.copyWith(
            isLoading: true,
            hasError: false,
            errorMessage: null,
            generatedBio: null,
          ));
          try {
            final bio = await _aiContentService.generateBiography(
              name: e.name,
              location: e.location,
              genre: e.genre,
            );
            emit(state.copyWith(
              isLoading: false,
              hasError: false,
              generatedBio: bio,
              errorMessage: null,
            ));
          } catch (error) {
            emit(state.copyWith(
              isLoading: false,
              hasError: true,
              errorMessage: error.toString(),
              generatedBio: null,
            ));
          }
        },
        clearError: (e) {
          emit(state.copyWith(
            isLoading: false,
            hasError: false,
            errorMessage: null,
            generatedBio: null,
          ));
        },
        reset: (e) {
          emit(OnboardingAiState.initial());
        },
      );
    });
  }
}
