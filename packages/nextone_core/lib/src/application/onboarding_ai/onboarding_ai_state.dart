part of 'onboarding_ai_bloc.dart';

@freezed
class OnboardingAiState with _$OnboardingAiState {
  const factory OnboardingAiState({
    required bool isLoading,
    required bool hasError,
    String? generatedBio,
    String? errorMessage,
  }) = _OnboardingAiState;

  factory OnboardingAiState.initial() => const OnboardingAiState(
        isLoading: false,
        hasError: false,
        generatedBio: null,
        errorMessage: null,
      );
}
