// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Headline _$HeadlineFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Headline', json, ($checkedConvert) {
      final val = Headline(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        url: $checkedConvert('url', (v) => v as String),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String),
        publishedAt: $checkedConvert(
          'publishedAt',
          (v) => dateTimeFromJson(v as String?),
        ),
        source: $checkedConvert(
          'source',
          (v) => Source.fromJson(v as Map<String, dynamic>),
        ),
        category: $checkedConvert(
          'category',
          (v) => Category.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$HeadlineToJson(Headline instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'url': instance.url,
  'imageUrl': instance.imageUrl,
  'publishedAt': dateTimeToJson(instance.publishedAt),
  'source': instance.source.toJson(),
  'createdAt': dateTimeToJson(instance.createdAt),
  'updatedAt': dateTimeToJson(instance.updatedAt),
  'status': _$ContentStatusEnumMap[instance.status]!,
  'category': instance.category.toJson(),
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
