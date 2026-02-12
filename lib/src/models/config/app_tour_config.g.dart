// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_tour_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppTourConfig _$AppTourConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AppTourConfig', json, ($checkedConvert) {
      final val = AppTourConfig(
        isEnabled: $checkedConvert('isEnabled', (v) => v as bool),
        isSkippable: $checkedConvert('isSkippable', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$AppTourConfigToJson(AppTourConfig instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'isSkippable': instance.isSkippable,
    };
