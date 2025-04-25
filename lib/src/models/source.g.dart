// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
  name: json['name'] as String,
  description: json['description'] as String?,
  url: json['url'] as String?,
  type: $enumDecodeNullable(
    _$SourceTypeEnumMap,
    json['type'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  language: json['language'] as String?,
  headquarters:
      json['headquarters'] == null
          ? null
          : Country.fromJson(json['headquarters'] as Map<String, dynamic>),
  id: json['id'] as String?,
);

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  if (instance.description case final value?) 'description': value,
  if (instance.url case final value?) 'url': value,
  if (_$SourceTypeEnumMap[instance.type] case final value?) 'type': value,
  if (instance.language case final value?) 'language': value,
  if (instance.headquarters?.toJson() case final value?) 'headquarters': value,
};

const _$SourceTypeEnumMap = {
  SourceType.newsAgency: 'news-agency',
  SourceType.localNewsOutlet: 'local-news-outlet',
  SourceType.nationalNewsOutlet: 'national-news-outlet',
  SourceType.internationalNewsOutlet: 'international-news-outlet',
  SourceType.specializedPublisher: 'specialized-publisher',
  SourceType.blog: 'blog',
  SourceType.governmentSource: 'government-source',
  SourceType.aggregator: 'aggregator',
  SourceType.other: 'other',
};
