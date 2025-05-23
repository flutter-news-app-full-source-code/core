// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngagementContent _$EngagementContentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EngagementContent',
      json,
      ($checkedConvert) {
        final val = EngagementContent(
          title: $checkedConvert('title', (v) => v as String),
          engagementContentType: $checkedConvert(
              'engagement_content_type',
              (v) => $enumDecodeNullable(_$EngagementContentTypeEnumMap, v,
                  unknownValue: JsonKey.nullForUndefinedEnumValue)),
          action: $checkedConvert('action',
              (v) => feedItemActionFromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description', (v) => v as String?),
          callToActionText:
              $checkedConvert('call_to_action_text', (v) => v as String?),
          callToActionUrl:
              $checkedConvert('call_to_action_url', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'engagementContentType': 'engagement_content_type',
        'callToActionText': 'call_to_action_text',
        'callToActionUrl': 'call_to_action_url'
      },
    );

Map<String, dynamic> _$EngagementContentToJson(EngagementContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
      if (_$EngagementContentTypeEnumMap[instance.engagementContentType]
          case final value?)
        'engagement_content_type': value,
      if (instance.callToActionText case final value?)
        'call_to_action_text': value,
      if (instance.callToActionUrl case final value?)
        'call_to_action_url': value,
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
