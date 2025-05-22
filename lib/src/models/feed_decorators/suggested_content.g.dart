// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedContent _$SuggestedContentFromJson(Map<String, dynamic> json) =>
    SuggestedContent(
      displayType: $enumDecodeNullable(
        _$SuggestedContentDisplayTypeEnumMap,
        json['displayType'],
        unknownValue: JsonKey.nullForUndefinedEnumValue,
      ),
      items: SuggestedContent._feedItemsFromJson(json['items'] as List),
      action: feedItemActionFromJson(json['action'] as Map<String, dynamic>),
      title: json['title'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$SuggestedContentToJson(SuggestedContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      if (_$SuggestedContentDisplayTypeEnumMap[instance.displayType]
          case final value?)
        'displayType': value,
      'items': SuggestedContent._feedItemsToJson(instance.items),
      'action': feedItemActionToJson(instance.action),
    };

const _$SuggestedContentDisplayTypeEnumMap = {
  SuggestedContentDisplayType.horizontalCardList: 'horizontal_card_list',
  SuggestedContentDisplayType.verticalCardList: 'vertical_card_list',
  SuggestedContentDisplayType.grid: 'grid',
  SuggestedContentDisplayType.singlePromotionalCard: 'single_promotional_card',
  SuggestedContentDisplayType.textList: 'text_list',
};
