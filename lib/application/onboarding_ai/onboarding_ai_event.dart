part of 'onboarding_ai_bloc.dart';

@freezed
class OnboardingAiEvent with _$OnboardingAiEvent {
  const factory OnboardingAiEvent.generateBio({
    required String name,
    required String location,
    required String genre,
  }) = GenerateBio;

  const factory OnboardingAiEvent.clearError() = ClearOnboardingAiError;

  const factory OnboardingAiEvent.reset() = ResetOnboardingAi;
}
