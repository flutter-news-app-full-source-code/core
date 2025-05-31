// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Category',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = Category(
          name: $checkedConvert('name', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          iconUrl: $checkedConvert('icon_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'iconUrl': 'icon_url'},
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
      if (instance.iconUrl case final value?) 'icon_url': value,
    };
