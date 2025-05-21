// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => AppConfig(
  id: json['id'] as String,
  userPreferenceLimits:
      json['userPreferenceLimits'] == null
          ? null
          : UserPreferenceLimits.fromJson(
            json['userPreferenceLimits'] as Map<String, dynamic>,
          ),
  adConfig:
      json['adConfig'] == null
          ? null
          : AdConfig.fromJson(json['adConfig'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
  'id': instance.id,
  'userPreferenceLimits': instance.userPreferenceLimits.toJson(),
  'adConfig': instance.adConfig.toJson(),
};
