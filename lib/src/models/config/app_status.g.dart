// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppStatus _$AppStatusFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AppStatus', json, ($checkedConvert) {
  final val = AppStatus(
    isUnderMaintenance: $checkedConvert('isUnderMaintenance', (v) => v as bool),
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

Map<String, dynamic> _$AppStatusToJson(AppStatus instance) => <String, dynamic>{
  'isUnderMaintenance': instance.isUnderMaintenance,
  'latestAppVersion': instance.latestAppVersion,
  'isLatestVersionOnly': instance.isLatestVersionOnly,
  'iosUpdateUrl': instance.iosUpdateUrl,
  'androidUpdateUrl': instance.androidUpdateUrl,
};
