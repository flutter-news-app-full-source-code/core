// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_content_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuggestedContentTemplate _$SuggestedContentTemplateFromJson(
        Map<String, dynamic> json) =>
    SuggestedContentTemplate(
      type: $enumDecode(_$SuggestionTemplateTypeEnumMap, json['type']),
      displayType: $enumDecode(
          _$SuggestedContentDisplayTypeEnumMap, json['displayType']),
      suggestedContentType:
          $enumDecode(_$ContentTypeEnumMap, json['suggestedContentType']),
      title: json['title'] as String?,
      description: json['description'] as String?,
      maxItemsToDisplay: (json['maxItemsToDisplay'] as num?)?.toInt(),
      fetchCriteria: json['fetchCriteria'] as String?,
    );

Map<String, dynamic> _$SuggestedContentTemplateToJson(
        SuggestedContentTemplate instance) =>
    <String, dynamic>{
      'type': _$SuggestionTemplateTypeEnumMap[instance.type]!,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      'displayType':
          _$SuggestedContentDisplayTypeEnumMap[instance.displayType]!,
      'suggestedContentType':
          _$ContentTypeEnumMap[instance.suggestedContentType]!,
      if (instance.maxItemsToDisplay case final value?)
        'maxItemsToDisplay': value,
      if (instance.fetchCriteria case final value?) 'fetchCriteria': value,
    };

const _$SuggestionTemplateTypeEnumMap = {
  SuggestionTemplateType.categoriesToFollow: 'categories-to-follow',
  SuggestionTemplateType.sourcesToFollow: 'sources-to-follow',
  SuggestionTemplateType.countriesToFollow: 'countries-to-follow',
};

const _$SuggestedContentDisplayTypeEnumMap = {
  SuggestedContentDisplayType.horizontalCardList: 'horizontal-card-list',
  SuggestedContentDisplayType.verticalCardList: 'vertical-card-list',
  SuggestedContentDisplayType.grid: 'grid',
  SuggestedContentDisplayType.singlePromotionalCard: 'single-promotional-card',
  SuggestedContentDisplayType.textList: 'text-list',
};

const _$ContentTypeEnumMap = {
  ContentType.headline: 'headline',
  ContentType.category: 'category',
  ContentType.source: 'source',
  ContentType.country: 'country',
};
