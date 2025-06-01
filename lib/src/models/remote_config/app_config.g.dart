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
          userPreferenceLimits: $checkedConvert(
              'user_preference_limits',
              (v) => v == null
                  ? null
                  : UserPreferenceConfig.fromJson(v as Map<String, dynamic>)),
          adConfig: $checkedConvert(
              'ad_config',
              (v) => v == null
                  ? null
                  : AdConfig.fromJson(v as Map<String, dynamic>)),
          accountActionConfig: $checkedConvert(
              'account_action_config',
              (v) => v == null
                  ? null
                  : AccountActionConfig.fromJson(v as Map<String, dynamic>)),
          killSwitchEnabled: $checkedConvert(
              'kill_switch_enabled', (v) => v as bool? ?? false),
          appOperationalStatus: $checkedConvert(
              'app_operational_status',
              (v) =>
                  $enumDecodeNullable(_$RemoteAppStatusEnumMap, v) ??
                  RemoteAppStatus.active),
          maintenanceMessage:
              $checkedConvert('maintenance_message', (v) => v as String?),
          disabledMessage:
              $checkedConvert('disabled_message', (v) => v as String?),
          minAllowedAppVersion:
              $checkedConvert('min_allowed_app_version', (v) => v as String?),
          latestAppVersion:
              $checkedConvert('latest_app_version', (v) => v as String?),
          updateRequiredMessage:
              $checkedConvert('update_required_message', (v) => v as String?),
          updateOptionalMessage:
              $checkedConvert('update_optional_message', (v) => v as String?),
          iosStoreUrl: $checkedConvert('ios_store_url', (v) => v as String?),
          androidStoreUrl:
              $checkedConvert('android_store_url', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'userPreferenceLimits': 'user_preference_limits',
        'adConfig': 'ad_config',
        'accountActionConfig': 'account_action_config',
        'killSwitchEnabled': 'kill_switch_enabled',
        'appOperationalStatus': 'app_operational_status',
        'maintenanceMessage': 'maintenance_message',
        'disabledMessage': 'disabled_message',
        'minAllowedAppVersion': 'min_allowed_app_version',
        'latestAppVersion': 'latest_app_version',
        'updateRequiredMessage': 'update_required_message',
        'updateOptionalMessage': 'update_optional_message',
        'iosStoreUrl': 'ios_store_url',
        'androidStoreUrl': 'android_store_url'
      },
    );

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
      'id': instance.id,
      'user_preference_limits': instance.userPreferenceLimits.toJson(),
      'ad_config': instance.adConfig.toJson(),
      'account_action_config': instance.accountActionConfig.toJson(),
      'kill_switch_enabled': instance.killSwitchEnabled,
      'app_operational_status':
          _$RemoteAppStatusEnumMap[instance.appOperationalStatus]!,
      if (instance.maintenanceMessage case final value?)
        'maintenance_message': value,
      if (instance.disabledMessage case final value?) 'disabled_message': value,
      if (instance.minAllowedAppVersion case final value?)
        'min_allowed_app_version': value,
      if (instance.latestAppVersion case final value?)
        'latest_app_version': value,
      if (instance.updateRequiredMessage case final value?)
        'update_required_message': value,
      if (instance.updateOptionalMessage case final value?)
        'update_optional_message': value,
      if (instance.iosStoreUrl case final value?) 'ios_store_url': value,
      if (instance.androidStoreUrl case final value?)
        'android_store_url': value,
    };

const _$RemoteAppStatusEnumMap = {
  RemoteAppStatus.active: 'active',
  RemoteAppStatus.maintenance: 'maintenance',
  RemoteAppStatus.disabled: 'disabled',
};
