// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeneralAppConfig _$GeneralAppConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GeneralAppConfig', json, ($checkedConvert) {
  final val = GeneralAppConfig(
    termsOfServiceUrl: $checkedConvert('termsOfServiceUrl', (v) => v as String),
    privacyPolicyUrl: $checkedConvert('privacyPolicyUrl', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$GeneralAppConfigToJson(GeneralAppConfig instance) =>
    <String, dynamic>{
      'termsOfServiceUrl': instance.termsOfServiceUrl,
      'privacyPolicyUrl': instance.privacyPolicyUrl,
    };
