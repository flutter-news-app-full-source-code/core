// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteConfig _$RemoteConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RemoteConfig', json, ($checkedConvert) {
  final val = RemoteConfig(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    app: $checkedConvert(
      'app',
      (v) => AppConfig.fromJson(v as Map<String, dynamic>),
    ),
    features: $checkedConvert(
      'features',
      (v) => FeaturesConfig.fromJson(v as Map<String, dynamic>),
    ),
    user: $checkedConvert(
      'user',
      (v) => UserConfig.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$RemoteConfigToJson(RemoteConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app': instance.app.toJson(),
      'features': instance.features.toJson(),
      'user': instance.user.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
