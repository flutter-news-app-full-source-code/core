// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Headline _$HeadlineFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Headline', json, ($checkedConvert) {
  final val = Headline(
    id: $checkedConvert('id', (v) => v as String),
    title: $checkedConvert('title', (v) => v as String),
    url: $checkedConvert('url', (v) => v as String),
    imageUrl: $checkedConvert('imageUrl', (v) => v as String),
    source: $checkedConvert(
      'source',
      (v) => Source.fromJson(v as Map<String, dynamic>),
    ),
    eventCountry: $checkedConvert(
      'eventCountry',
      (v) => Country.fromJson(v as Map<String, dynamic>),
    ),
    topic: $checkedConvert(
      'topic',
      (v) => Topic.fromJson(v as Map<String, dynamic>),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$ContentStatusEnumMap, v),
    ),
    isBreaking: $checkedConvert('isBreaking', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$HeadlineToJson(Headline instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'url': instance.url,
  'imageUrl': instance.imageUrl,
  'source': instance.source.toJson(),
  'eventCountry': instance.eventCountry.toJson(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'status': _$ContentStatusEnumMap[instance.status]!,
  'isBreaking': instance.isBreaking,
  'topic': instance.topic.toJson(),
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
