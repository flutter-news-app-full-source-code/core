// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Country',
  json,
  ($checkedConvert) {
    final val = Country(
      isoCode: $checkedConvert('iso_code', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      flagUrl: $checkedConvert('flag_url', (v) => v as String),
      id: $checkedConvert('id', (v) => v as String?),
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
    'isoCode': 'iso_code',
    'flagUrl': 'flag_url',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'id': instance.id,
  'iso_code': instance.isoCode,
  'name': instance.name,
  'flag_url': instance.flagUrl,
  if (dateTimeToJson(instance.createdAt) case final value?) 'created_at': value,
  if (dateTimeToJson(instance.updatedAt) case final value?) 'updated_at': value,
  'status': _$ContentStatusEnumMap[instance.status]!,
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
