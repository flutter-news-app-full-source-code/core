// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_signal_provider_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneSignalProviderConfig _$OneSignalProviderConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OneSignalProviderConfig', json, ($checkedConvert) {
  final val = OneSignalProviderConfig(
    appId: $checkedConvert('appId', (v) => v as String),
    restApiKey: $checkedConvert('restApiKey', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$OneSignalProviderConfigToJson(
  OneSignalProviderConfig instance,
) => <String, dynamic>{
  'providerName': _$PushNotificationProviderEnumMap[instance.provider]!,
  'appId': instance.appId,
  'restApiKey': instance.restApiKey,
};

const _$PushNotificationProviderEnumMap = {
  PushNotificationProvider.firebase: 'firebase',
  PushNotificationProvider.oneSignal: 'oneSignal',
};
