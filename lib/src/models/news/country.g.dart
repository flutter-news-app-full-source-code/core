// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
  isoCode: json['iso_code'] as String,
  name: json['name'] as String,
  flagUrl: json['flag_url'] as String,
  id: json['id'] as String?,
);

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'id': instance.id,
  'iso_code': instance.isoCode,
  'name': instance.name,
  'flag_url': instance.flagUrl,
};
