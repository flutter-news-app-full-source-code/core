// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Source',
  json,
  ($checkedConvert) {
    final val = Source(
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      url: $checkedConvert('url', (v) => v as String?),
      sourceType: $checkedConvert(
        'source_type',
        (v) => $enumDecodeNullable(_$SourceTypeEnumMap, v),
      ),
      language: $checkedConvert('language', (v) => v as String?),
      headquarters: $checkedConvert(
        'headquarters',
        (v) => v == null ? null : Country.fromJson(v as Map<String, dynamic>),
      ),
      createdAt: $checkedConvert(
        'created_at',
        (v) => dateTimeFromJson(v as String?),
      ),
      updatedAt: $checkedConvert(
        'updated_at',
        (v) => dateTimeFromJson(v as String?),
      ),
      status: $checkedConvert(
        'status',
        (v) =>
            $enumDecodeNullable(_$ContentStatusEnumMap, v) ??
            ContentStatus.active,
      ),
      id: $checkedConvert('id', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'sourceType': 'source_type',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  if (instance.description case final value?) 'description': value,
  if (instance.url case final value?) 'url': value,
  if (_$SourceTypeEnumMap[instance.sourceType] case final value?)
    'source_type': value,
  if (instance.language case final value?) 'language': value,
  if (instance.headquarters?.toJson() case final value?) 'headquarters': value,
  if (dateTimeToJson(instance.createdAt) case final value?) 'created_at': value,
  if (dateTimeToJson(instance.updatedAt) case final value?) 'updated_at': value,
  'status': _$ContentStatusEnumMap[instance.status]!,
};

const _$SourceTypeEnumMap = {
  SourceType.newsAgency: 'news_agency',
  SourceType.localNewsOutlet: 'local_news_outlet',
  SourceType.nationalNewsOutlet: 'national_news_outlet',
  SourceType.internationalNewsOutlet: 'international_news_outlet',
  SourceType.specializedPublisher: 'specialized_publisher',
  SourceType.blog: 'blog',
  SourceType.governmentSource: 'government_source',
  SourceType.aggregator: 'aggregator',
  SourceType.other: 'other',
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
