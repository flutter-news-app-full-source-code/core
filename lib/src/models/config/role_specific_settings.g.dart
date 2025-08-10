// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_specific_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoleSpecificSettings _$RoleSpecificSettingsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RoleSpecificSettings', json, ($checkedConvert) {
  final val = RoleSpecificSettings(
    daysBetweenViews: $checkedConvert(
      'daysBetweenViews',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$RoleSpecificSettingsToJson(
  RoleSpecificSettings instance,
) => <String, dynamic>{'daysBetweenViews': instance.daysBetweenViews};
