// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement_content_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngagementContentTemplate _$EngagementContentTemplateFromJson(
        Map<String, dynamic> json) =>
    EngagementContentTemplate(
      type: $enumDecode(_$EngagementTemplateTypeEnumMap, json['type']),
      title: json['title'] as String,
      description: json['description'] as String?,
      callToActionText: json['callToActionText'] as String?,
    );

Map<String, dynamic> _$EngagementContentTemplateToJson(
        EngagementContentTemplate instance) =>
    <String, dynamic>{
      'type': _$EngagementTemplateTypeEnumMap[instance.type]!,
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
      if (instance.callToActionText case final value?)
        'callToActionText': value,
    };

const _$EngagementTemplateTypeEnumMap = {
  EngagementTemplateType.rateApp: 'rate-app',
  EngagementTemplateType.linkAccount: 'link-account',
  EngagementTemplateType.upgradeToPremium: 'upgrade-to-premium',
  EngagementTemplateType.completeProfile: 'complete-profile',
  EngagementTemplateType.exploreNewFeature: 'explore-new-feature',
};
