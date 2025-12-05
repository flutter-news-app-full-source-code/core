// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_review_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppReviewConfig _$AppReviewConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppReviewConfig', json, ($checkedConvert) {
      final val = AppReviewConfig(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        interactionCycleThreshold: $checkedConvert(
          'interactionCycleThreshold',
          (v) => (v as num).toInt(),
        ),
        initialPromptCooldownDays: $checkedConvert(
          'initialPromptCooldownDays',
          (v) => (v as num).toInt(),
        ),
        eligiblePositiveInteractions: $checkedConvert(
          'eligiblePositiveInteractions',
          (v) => (v as List<dynamic>)
              .map((e) => $enumDecode(_$PositiveInteractionTypeEnumMap, e))
              .toList(),
        ),
        isNegativeFeedbackFollowUpEnabled: $checkedConvert(
          'isNegativeFeedbackFollowUpEnabled',
          (v) => v as bool,
        ),
        isPositiveFeedbackFollowUpEnabled: $checkedConvert(
          'isPositiveFeedbackFollowUpEnabled',
          (v) => v as bool,
        ),
      );
      return val;
    });

Map<String, dynamic> _$AppReviewConfigToJson(AppReviewConfig instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'interactionCycleThreshold': instance.interactionCycleThreshold,
      'initialPromptCooldownDays': instance.initialPromptCooldownDays,
      'eligiblePositiveInteractions': instance.eligiblePositiveInteractions
          .map((e) => _$PositiveInteractionTypeEnumMap[e]!)
          .toList(),
      'isNegativeFeedbackFollowUpEnabled':
          instance.isNegativeFeedbackFollowUpEnabled,
      'isPositiveFeedbackFollowUpEnabled':
          instance.isPositiveFeedbackFollowUpEnabled,
    };

const _$PositiveInteractionTypeEnumMap = {
  PositiveInteractionType.saveItem: 'saveItem',
  PositiveInteractionType.followItem: 'followItem',
  PositiveInteractionType.shareContent: 'shareContent',
  PositiveInteractionType.saveFilter: 'saveFilter',
};
