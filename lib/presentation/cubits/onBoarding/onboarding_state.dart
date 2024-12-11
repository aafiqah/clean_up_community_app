part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  factory OnboardingState({
    required bool isPasswordVisible,

  }) = _OnboardingState;

  factory OnboardingState.initial() => OnboardingState(
        isPasswordVisible: false,
      );

  factory OnboardingState.fromJson(Map<String, dynamic> json) =>
      _$OnboardingStateFromJson(json);
}