// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Source', json, ($checkedConvert) {
      final val = Source(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        url: $checkedConvert('url', (v) => v as String),
        sourceType: $checkedConvert(
          'sourceType',
          (v) => $enumDecode(_$SourceTypeEnumMap, v),
        ),
        language: $checkedConvert('language', (v) => v as String),
        headquarters: $checkedConvert(
          'headquarters',
          (v) => Country.fromJson(v as Map<String, dynamic>),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$ContentStatusEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'url': instance.url,
  'sourceType': _$SourceTypeEnumMap[instance.sourceType]!,
  'language': instance.language,
  'headquarters': instance.headquarters.toJson(),
  'createdAt': dateTimeToJson(instance.createdAt),
  'updatedAt': dateTimeToJson(instance.updatedAt),
  'status': _$ContentStatusEnumMap[instance.status]!,
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

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
