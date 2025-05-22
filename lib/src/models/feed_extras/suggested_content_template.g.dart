// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_content_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedContentTemplate _$SuggestedContentTemplateFromJson(
  Map<String, dynamic> json,
) =>
    SuggestedContentTemplate(
      type: $enumDecode(_$SuggestionTemplateTypeEnumMap, json['type']),
      displayType: $enumDecode(
        _$SuggestedContentDisplayTypeEnumMap,
        json['displayType'],
      ),
      suggestedContentType:
          $enumDecode(_$ContentTypeEnumMap, json['suggestedContentType']),
      title: json['title'] as String?,
      description: json['description'] as String?,
      maxItemsToDisplay: (json['maxItemsToDisplay'] as num?)?.toInt(),
      fetchCriteria: json['fetchCriteria'] as String?,
    );

Map<String, dynamic> _$SuggestedContentTemplateToJson(
  SuggestedContentTemplate instance,
) =>
    <String, dynamic>{
      'type': _$SuggestionTemplateTypeEnumMap[instance.type]!,
      'title': instance.title,
      'description': instance.description,
      'displayType':
          _$SuggestedContentDisplayTypeEnumMap[instance.displayType]!,
      'suggestedContentType':
          _$ContentTypeEnumMap[instance.suggestedContentType]!,
      'maxItemsToDisplay': instance.maxItemsToDisplay,
      'fetchCriteria': instance.fetchCriteria,
    };

const _$SuggestionTemplateTypeEnumMap = {
  SuggestionTemplateType.categoriesToFollow: 'categories-to-follow',
  SuggestionTemplateType.sourcesToFollow: 'sources-to-follow',
  SuggestionTemplateType.countriesToFollow: 'countries-to-follow',
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
