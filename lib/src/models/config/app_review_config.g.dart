// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_review_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppReviewConfig _$AppReviewConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppReviewConfig', json, ($checkedConvert) {
      final val = AppReviewConfig(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        positiveInteractionThreshold: $checkedConvert(
          'positiveInteractionThreshold',
          (v) => (v as num).toInt(),
        ),
        initialPromptCooldownDays: $checkedConvert(
          'initialPromptCooldownDays',
          (v) => (v as num).toInt(),
        ),
        isNegativeFeedbackFollowUpEnabled: $checkedConvert(
          'isNegativeFeedbackFollowUpEnabled',
          (v) => v as bool,
        ),
      );
      return val;
    });

Map<String, dynamic> _$AppReviewConfigToJson(AppReviewConfig instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'positiveInteractionThreshold': instance.positiveInteractionThreshold,
      'initialPromptCooldownDays': instance.initialPromptCooldownDays,
      'isNegativeFeedbackFollowUpEnabled':
          instance.isNegativeFeedbackFollowUpEnabled,
    };
