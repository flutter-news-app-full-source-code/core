// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Country', json, ($checkedConvert) {
      final val = Country(
        isoCode: $checkedConvert('isoCode', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        flagUrl: $checkedConvert('flagUrl', (v) => v as String),
        id: $checkedConvert('id', (v) => v as String),
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

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'id': instance.id,
  'isoCode': instance.isoCode,
  'name': instance.name,
  'flagUrl': instance.flagUrl,
  'createdAt': dateTimeToJson(instance.createdAt),
  'updatedAt': dateTimeToJson(instance.updatedAt),
  'status': _$ContentStatusEnumMap[instance.status]!,
};

const _$ContentStatusEnumMap = {
  ContentStatus.active: 'active',
  ContentStatus.draft: 'draft',
  ContentStatus.archived: 'archived',
};
