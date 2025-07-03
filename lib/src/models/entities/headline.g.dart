// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Headline _$HeadlineFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Headline',
  json,
  ($checkedConvert) {
    final val = Headline(
      title: $checkedConvert('title', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      url: $checkedConvert('url', (v) => v as String?),
      imageUrl: $checkedConvert('image_url', (v) => v as String?),
      publishedAt: $checkedConvert(
        'published_at',
        (v) => dateTimeFromJson(v as String?),
      ),
      source: $checkedConvert(
        'source',
        (v) => v == null ? null : Source.fromJson(v as Map<String, dynamic>),
      ),
      category: $checkedConvert(
        'category',
        (v) => v == null ? null : Category.fromJson(v as Map<String, dynamic>),
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
    'imageUrl': 'image_url',
    'publishedAt': 'published_at',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$HeadlineToJson(Headline instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  if (instance.description case final value?) 'description': value,
  if (instance.url case final value?) 'url': value,
  if (instance.imageUrl case final value?) 'image_url': value,
  if (dateTimeToJson(instance.publishedAt) case final value?)
    'published_at': value,
  if (instance.source?.toJson() case final value?) 'source': value,
  if (dateTimeToJson(instance.createdAt) case final value?) 'created_at': value,
  if (dateTimeToJson(instance.updatedAt) case final value?) 'updated_at': value,
  'status': _$ContentStatusEnumMap[instance.status]!,
  if (instance.category?.toJson() case final value?) 'category': value,
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
