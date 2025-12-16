// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topic _$TopicFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Topic', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = Topic(
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
    iconUrl: $checkedConvert('iconUrl', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$ContentStatusEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'iconUrl': instance.iconUrl,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'status': _$ContentStatusEnumMap[instance.status]!,
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
