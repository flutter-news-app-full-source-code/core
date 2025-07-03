// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Category',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['name']);
    final val = Category(
      name: $checkedConvert('name', (v) => v as String),
      id: $checkedConvert('id', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      iconUrl: $checkedConvert('icon_url', (v) => v as String?),
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
    );
    return val;
  },
  fieldKeyMap: const {
    'iconUrl': 'icon_url',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  if (instance.description case final value?) 'description': value,
  if (instance.iconUrl case final value?) 'icon_url': value,
  if (dateTimeToJson(instance.createdAt) case final value?) 'created_at': value,
  if (dateTimeToJson(instance.updatedAt) case final value?) 'updated_at': value,
  'status': _$ContentStatusEnumMap[instance.status]!,
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
