// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedAction _$FeedActionFromJson(Map<String, dynamic> json) => $checkedCreate(
  'FeedAction',
  json,
  ($checkedConvert) {
    final val = FeedAction(
      id: $checkedConvert('id', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      feedActionType: $checkedConvert(
        'feedActionType',
        (v) => $enumDecode(_$FeedActionTypeEnumMap, v),
      ),
      description: $checkedConvert('description', (v) => v as String),
      callToActionText: $checkedConvert('callToActionText', (v) => v as String),
      callToActionUrl: $checkedConvert('callToActionUrl', (v) => v as String),
    );
    return val;
  },
);

Map<String, dynamic> _$FeedActionToJson(FeedAction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'feedActionType': _$FeedActionTypeEnumMap[instance.feedActionType]!,
      'callToActionText': instance.callToActionText,
      'callToActionUrl': instance.callToActionUrl,
    };

const _$FeedActionTypeEnumMap = {
  FeedActionType.linkAccount: 'linkAccount',
  FeedActionType.upgrade: 'upgrade',
  FeedActionType.rateApp: 'rateApp',
  FeedActionType.enableNotifications: 'enableNotifications',
  FeedActionType.followTopics: 'followTopics',
  FeedActionType.followSources: 'followSources',
};
