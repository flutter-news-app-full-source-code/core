// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Source', json, ($checkedConvert) {
  final val = Source(
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
    url: $checkedConvert('url', (v) => v as String),
    logoUrl: $checkedConvert('logoUrl', (v) => v as String),
    sourceType: $checkedConvert(
      'sourceType',
      (v) => $enumDecode(_$SourceTypeEnumMap, v),
    ),
    language: $checkedConvert(
      'language',
      (v) => Language.fromJson(v as Map<String, dynamic>),
    ),
    headquarters: $checkedConvert(
      'headquarters',
      (v) => Country.fromJson(v as Map<String, dynamic>),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
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
  'logoUrl': instance.logoUrl,
  'sourceType': _$SourceTypeEnumMap[instance.sourceType]!,
  'language': instance.language.toJson(),
  'headquarters': instance.headquarters.toJson(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
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
