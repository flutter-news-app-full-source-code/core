// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngagementContent _$EngagementContentFromJson(Map<String, dynamic> json) =>
    EngagementContent(
      title: json['title'] as String,
      engagementContentType: $enumDecode(
          _$EngagementContentTypeEnumMap, json['engagementContentType']),
      action: feedItemActionFromJson(json['action'] as Map<String, dynamic>),
      description: json['description'] as String?,
      callToActionText: json['callToActionText'] as String?,
      callToActionUrl: json['callToActionUrl'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$EngagementContentToJson(EngagementContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
      'engagementContentType':
          _$EngagementContentTypeEnumMap[instance.engagementContentType]!,
      if (instance.callToActionText case final value?)
        'callToActionText': value,
      if (instance.callToActionUrl case final value?) 'callToActionUrl': value,
      'action': feedItemActionToJson(instance.action),
    };

const _$EngagementContentTypeEnumMap = {
  EngagementContentType.signUp: 'sign_up',
  EngagementContentType.upgrade: 'upgrade',
  EngagementContentType.feedback: 'feedback',
  EngagementContentType.survey: 'survey',
  EngagementContentType.rateApp: 'rate_app',
  EngagementContentType.shareApp: 'share_app',
  EngagementContentType.custom: 'custom',
};
