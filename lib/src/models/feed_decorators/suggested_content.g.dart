// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedContent _$SuggestedContentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SuggestedContent',
      json,
      ($checkedConvert) {
        final val = SuggestedContent(
          displayType: $checkedConvert(
              'display_type',
              (v) =>
                  $enumDecodeNullable(_$SuggestedContentDisplayTypeEnumMap, v)),
          items: $checkedConvert(
              'items', (v) => SuggestedContent._feedItemsFromJson(v as List)),
          action: $checkedConvert('action',
              (v) => feedItemActionFromJson(v as Map<String, dynamic>)),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'displayType': 'display_type'},
    );

Map<String, dynamic> _$SuggestedContentToJson(SuggestedContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      if (_$SuggestedContentDisplayTypeEnumMap[instance.displayType]
          case final value?)
        'display_type': value,
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
