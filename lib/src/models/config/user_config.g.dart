// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserConfig _$UserConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserConfig', json, ($checkedConvert) {
      final val = UserConfig(
        limits: $checkedConvert(
          'limits',
          (v) => UserLimitsConfig.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserConfigToJson(UserConfig instance) =>
    <String, dynamic>{'limits': instance.limits.toJson()};
