// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_filter_criteria.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceFilterCriteria _$SourceFilterCriteriaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SourceFilterCriteria', json, ($checkedConvert) {
  final val = SourceFilterCriteria(
    sourceTypes: $checkedConvert(
      'sourceTypes',
      (v) => (v as List<dynamic>)
          .map((e) => $enumDecode(_$SourceTypeEnumMap, e))
          .toList(),
    ),
    languages: $checkedConvert(
      'languages',
      (v) => (v as List<dynamic>)
          .map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    countries: $checkedConvert(
      'countries',
      (v) => (v as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SourceFilterCriteriaToJson(
  SourceFilterCriteria instance,
) => <String, dynamic>{
  'sourceTypes': instance.sourceTypes
      .map((e) => _$SourceTypeEnumMap[e]!)
      .toList(),
  'languages': instance.languages.map((e) => e.toJson()).toList(),
  'countries': instance.countries.map((e) => e.toJson()).toList(),
};

const _$SourceTypeEnumMap = {
  SourceType.newsAgency: 'newsAgency',
  SourceType.localNewsOutlet: 'localNewsOutlet',
  SourceType.nationalNewsOutlet: 'nationalNewsOutlet',
  SourceType.internationalNewsOutlet: 'internationalNewsOutlet',
  SourceType.specializedPublisher: 'specializedPublisher',
  SourceType.blog: 'blog',
  SourceType.governmentSource: 'governmentSource',
  SourceType.aggregator: 'aggregator',
  SourceType.other: 'other',
};
