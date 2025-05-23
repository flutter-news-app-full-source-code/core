// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement_content_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngagementContentTemplate _$EngagementContentTemplateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'EngagementContentTemplate',
      json,
      ($checkedConvert) {
        final val = EngagementContentTemplate(
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$EngagementTemplateTypeEnumMap, v)),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          callToActionText:
              $checkedConvert('call_to_action_text', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'callToActionText': 'call_to_action_text'},
    );

Map<String, dynamic> _$EngagementContentTemplateToJson(
        EngagementContentTemplate instance) =>
    <String, dynamic>{
      'type': _$EngagementTemplateTypeEnumMap[instance.type]!,
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
      if (instance.callToActionText case final value?)
        'call_to_action_text': value,
    };

const _$EngagementTemplateTypeEnumMap = {
  EngagementTemplateType.rateApp: 'rate_app',
  EngagementTemplateType.linkAccount: 'link_account',
  EngagementTemplateType.upgradeToPremium: 'upgrade_to_premium',
  EngagementTemplateType.completeProfile: 'complete_profile',
  EngagementTemplateType.exploreNewFeature: 'explore_new_feature',
};
