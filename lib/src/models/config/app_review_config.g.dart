// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_review_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppReviewConfig _$AppReviewConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppReviewConfig', json, ($checkedConvert) {
      final val = AppReviewConfig(
        positiveInteractionThreshold: $checkedConvert(
          'positiveInteractionThreshold',
          (v) => (v as num).toInt(),
        ),
        initialPromptCooldownDays: $checkedConvert(
          'initialPromptCooldownDays',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AppReviewConfigToJson(AppReviewConfig instance) =>
    <String, dynamic>{
      'positiveInteractionThreshold': instance.positiveInteractionThreshold,
      'initialPromptCooldownDays': instance.initialPromptCooldownDays,
    };
