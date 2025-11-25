// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaintenanceConfig _$MaintenanceConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MaintenanceConfig', json, ($checkedConvert) {
      final val = MaintenanceConfig(
        isUnderMaintenance: $checkedConvert(
          'isUnderMaintenance',
          (v) => v as bool,
        ),
      );
      return val;
    });

Map<String, dynamic> _$MaintenanceConfigToJson(MaintenanceConfig instance) =>
    <String, dynamic>{'isUnderMaintenance': instance.isUnderMaintenance};
