// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => $checkedCreate(
  'AppConfig',
  json,
  ($checkedConvert) {
    final val = AppConfig(
      id: $checkedConvert('id', (v) => v as String),
      maintenanceMessage: $checkedConvert(
        'maintenanceMessage',
        (v) => v as String,
      ),
      disabledMessage: $checkedConvert('disabledMessage', (v) => v as String),
      minAllowedAppVersion: $checkedConvert(
        'minAllowedAppVersion',
        (v) => v as String,
      ),
      latestAppVersion: $checkedConvert('latestAppVersion', (v) => v as String),
      updateRequiredMessage: $checkedConvert(
        'updateRequiredMessage',
        (v) => v as String,
      ),
      updateOptionalMessage: $checkedConvert(
        'updateOptionalMessage',
        (v) => v as String,
      ),
      iosStoreUrl: $checkedConvert('iosStoreUrl', (v) => v as String),
      androidStoreUrl: $checkedConvert('androidStoreUrl', (v) => v as String),
      userPreferenceLimits: $checkedConvert(
        'userPreferenceLimits',
        (v) => v == null
            ? null
            : UserPreferenceConfig.fromJson(v as Map<String, dynamic>),
      ),
      adConfig: $checkedConvert(
        'adConfig',
        (v) => v == null ? null : AdConfig.fromJson(v as Map<String, dynamic>),
      ),
      accountActionConfig: $checkedConvert(
        'accountActionConfig',
        (v) => v == null
            ? null
            : AccountActionConfig.fromJson(v as Map<String, dynamic>),
      ),
      killSwitchEnabled: $checkedConvert(
        'killSwitchEnabled',
        (v) => v as bool? ?? false,
      ),
      appOperationalStatus: $checkedConvert(
        'appOperationalStatus',
        (v) =>
            $enumDecodeNullable(_$RemoteAppStatusEnumMap, v) ??
            RemoteAppStatus.active,
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
  'id': instance.id,
  'userPreferenceLimits': instance.userPreferenceLimits.toJson(),
  'adConfig': instance.adConfig.toJson(),
  'accountActionConfig': instance.accountActionConfig.toJson(),
  'killSwitchEnabled': instance.killSwitchEnabled,
  'appOperationalStatus':
      _$RemoteAppStatusEnumMap[instance.appOperationalStatus]!,
  'maintenanceMessage': instance.maintenanceMessage,
  'disabledMessage': instance.disabledMessage,
  'minAllowedAppVersion': instance.minAllowedAppVersion,
  'latestAppVersion': instance.latestAppVersion,
  'updateRequiredMessage': instance.updateRequiredMessage,
  'updateOptionalMessage': instance.updateOptionalMessage,
  'iosStoreUrl': instance.iosStoreUrl,
  'androidStoreUrl': instance.androidStoreUrl,
};

const _$RemoteAppStatusEnumMap = {
  RemoteAppStatus.active: 'active',
  RemoteAppStatus.maintenance: 'maintenance',
  RemoteAppStatus.disabled: 'disabled',
};
