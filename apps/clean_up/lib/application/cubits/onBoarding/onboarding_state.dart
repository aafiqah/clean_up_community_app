part of 'onboarding_cubit.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  factory OnboardingState({
    required bool isPasswordVisible,
    required bool isConfirmPasswordVisible,
    required bool switchSignUp,
  }) = _OnboardingState;

  factory OnboardingState.initial() => OnboardingState(
        isPasswordVisible: false,
        isConfirmPasswordVisible: false,
        switchSignUp: false,
      );
}
