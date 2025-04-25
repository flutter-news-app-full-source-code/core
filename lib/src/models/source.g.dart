// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
  name: json['name'] as String,
  description: json['description'] as String?,
  url: json['url'] as String?,
  type: $enumDecodeNullable(_$SourceTypeEnumMap, json['type']),
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
  'description': instance.description,
  'url': instance.url,
  'type': _$SourceTypeEnumMap[instance.type],
  'language': instance.language,
  'headquarters': instance.headquarters,
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
