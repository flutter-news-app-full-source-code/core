// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_provider_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirebaseProviderConfig _$FirebaseProviderConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FirebaseProviderConfig', json, ($checkedConvert) {
  final val = FirebaseProviderConfig(
    projectId: $checkedConvert('projectId', (v) => v as String),
    clientEmail: $checkedConvert('clientEmail', (v) => v as String),
    privateKey: $checkedConvert('privateKey', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$FirebaseProviderConfigToJson(
  FirebaseProviderConfig instance,
) => <String, dynamic>{
  'providerName': _$PushNotificationProviderEnumMap[instance.provider]!,
  'projectId': instance.projectId,
  'clientEmail': instance.clientEmail,
  'privateKey': instance.privateKey,
};

const _$PushNotificationProviderEnumMap = {
  PushNotificationProvider.firebase: 'firebase',
  PushNotificationProvider.oneSignal: 'oneSignal',
};
