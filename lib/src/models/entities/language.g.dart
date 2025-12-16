// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Language', json, ($checkedConvert) {
  final val = Language(
    id: $checkedConvert('id', (v) => v as String),
    code: $checkedConvert('code', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    nativeName: $checkedConvert('nativeName', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$ContentStatusEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'nativeName': instance.nativeName,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'status': _$ContentStatusEnumMap[instance.status]!,
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
