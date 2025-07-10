// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteConfig _$RemoteConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RemoteConfig', json, ($checkedConvert) {
      final val = RemoteConfig(
        id: $checkedConvert('id', (v) => v as String),
        userPreferenceConfig: $checkedConvert(
          'userPreferenceLimits',
          (v) => UserPreferenceConfig.fromJson(v as Map<String, dynamic>),
        ),
        adConfig: $checkedConvert(
          'adConfig',
          (v) => AdConfig.fromJson(v as Map<String, dynamic>),
        ),
        accountActionConfig: $checkedConvert(
          'accountActionConfig',
          (v) => AccountActionConfig.fromJson(v as Map<String, dynamic>),
        ),
        appStatus: $checkedConvert(
          'appStatus',
          (v) => AppStatus.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RemoteConfigToJson(RemoteConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userPreferenceLimits': instance.userPreferenceConfig.toJson(),
      'adConfig': instance.adConfig.toJson(),
      'accountActionConfig': instance.accountActionConfig.toJson(),
      'appStatus': instance.appStatus.toJson(),
    };
