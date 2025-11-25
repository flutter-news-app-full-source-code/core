// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateConfig _$UpdateConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateConfig', json, ($checkedConvert) {
  final val = UpdateConfig(
    latestAppVersion: $checkedConvert('latestAppVersion', (v) => v as String),
    isLatestVersionOnly: $checkedConvert(
      'isLatestVersionOnly',
      (v) => v as bool,
    ),
    iosUpdateUrl: $checkedConvert('iosUpdateUrl', (v) => v as String),
    androidUpdateUrl: $checkedConvert('androidUpdateUrl', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateConfigToJson(UpdateConfig instance) =>
    <String, dynamic>{
      'latestAppVersion': instance.latestAppVersion,
      'isLatestVersionOnly': instance.isLatestVersionOnly,
      'iosUpdateUrl': instance.iosUpdateUrl,
      'androidUpdateUrl': instance.androidUpdateUrl,
    };
