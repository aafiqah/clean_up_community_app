// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingStateImpl _$$OnboardingStateImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingStateImpl(
      isPasswordVisible: json['isPasswordVisible'] as bool,
      isConfirmPasswordVisible: json['isConfirmPasswordVisible'] as bool,
      switchSignUp: json['switchSignUp'] as bool,
    );

Map<String, dynamic> _$$OnboardingStateImplToJson(
        _$OnboardingStateImpl instance) =>
    <String, dynamic>{
      'isPasswordVisible': instance.isPasswordVisible,
      'isConfirmPasswordVisible': instance.isConfirmPasswordVisible,
      'switchSignUp': instance.switchSignUp,
    };
