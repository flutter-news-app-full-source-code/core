// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_content_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedContentTemplate _$SuggestedContentTemplateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SuggestedContentTemplate',
      json,
      ($checkedConvert) {
        final val = SuggestedContentTemplate(
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SuggestionTemplateTypeEnumMap, v)),
          displayType: $checkedConvert('display_type',
              (v) => $enumDecode(_$SuggestedContentDisplayTypeEnumMap, v)),
          suggestedContentType: $checkedConvert('suggested_content_type',
              (v) => $enumDecode(_$ContentTypeEnumMap, v)),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          maxItemsToDisplay: $checkedConvert(
              'max_items_to_display', (v) => (v as num?)?.toInt()),
          fetchCriteria: $checkedConvert('fetch_criteria', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'displayType': 'display_type',
        'suggestedContentType': 'suggested_content_type',
        'maxItemsToDisplay': 'max_items_to_display',
        'fetchCriteria': 'fetch_criteria'
      },
    );

Map<String, dynamic> _$SuggestedContentTemplateToJson(
        SuggestedContentTemplate instance) =>
    <String, dynamic>{
      'type': _$SuggestionTemplateTypeEnumMap[instance.type]!,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      'display_type':
          _$SuggestedContentDisplayTypeEnumMap[instance.displayType]!,
      'suggested_content_type':
          _$ContentTypeEnumMap[instance.suggestedContentType]!,
      if (instance.maxItemsToDisplay case final value?)
        'max_items_to_display': value,
      if (instance.fetchCriteria case final value?) 'fetch_criteria': value,
    };

const _$SuggestionTemplateTypeEnumMap = {
  SuggestionTemplateType.categoriesToFollow: 'categories_to_follow',
  SuggestionTemplateType.sourcesToFollow: 'sources_to_follow',
  SuggestionTemplateType.countriesToFollow: 'countries_to_follow',
};

const _$SuggestedContentDisplayTypeEnumMap = {
  SuggestedContentDisplayType.horizontalCardList: 'horizontal_card_list',
  SuggestedContentDisplayType.verticalCardList: 'vertical_card_list',
  SuggestedContentDisplayType.grid: 'grid',
  SuggestedContentDisplayType.singlePromotionalCard: 'single_promotional_card',
  SuggestedContentDisplayType.textList: 'text_list',
};

const _$ContentTypeEnumMap = {
  ContentType.headline: 'headline',
  ContentType.category: 'category',
  ContentType.source: 'source',
  ContentType.country: 'country',
};
