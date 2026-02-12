// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnboardingConfig _$OnboardingConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OnboardingConfig', json, ($checkedConvert) {
      final val = OnboardingConfig(
        appTour: $checkedConvert(
          'appTour',
          (v) => AppTourConfig.fromJson(v as Map<String, dynamic>),
        ),
        initialPersonalization: $checkedConvert(
          'initialPersonalization',
          (v) =>
              InitialPersonalizationConfig.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OnboardingConfigToJson(OnboardingConfig instance) =>
    <String, dynamic>{
      'appTour': instance.appTour.toJson(),
      'initialPersonalization': instance.initialPersonalization.toJson(),
    };
