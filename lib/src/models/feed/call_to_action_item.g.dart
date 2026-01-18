// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_to_action_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallToActionItem _$CallToActionItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CallToActionItem', json, ($checkedConvert) {
      final val = CallToActionItem(
        id: $checkedConvert('id', (v) => v as String),
        decoratorType: $checkedConvert(
          'decoratorType',
          (v) => $enumDecode(_$FeedDecoratorTypeEnumMap, v),
        ),
        title: $checkedConvert('title', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        callToActionText: $checkedConvert(
          'callToActionText',
          (v) => v as String,
        ),
        callToActionUrl: $checkedConvert('callToActionUrl', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CallToActionItemToJson(CallToActionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'decoratorType': _$FeedDecoratorTypeEnumMap[instance.decoratorType]!,
      'title': instance.title,
      'description': instance.description,
      'callToActionText': instance.callToActionText,
      'callToActionUrl': instance.callToActionUrl,
    };

const _$FeedDecoratorTypeEnumMap = {
  FeedDecoratorType.linkAccount: 'linkAccount',
  FeedDecoratorType.unlockRewards: 'unlockRewards',
  FeedDecoratorType.rateApp: 'rateApp',
  FeedDecoratorType.suggestedTopics: 'suggestedTopics',
  FeedDecoratorType.suggestedSources: 'suggestedSources',
};
