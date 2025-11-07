// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationDevice _$PushNotificationDeviceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PushNotificationDevice', json, ($checkedConvert) {
  final val = PushNotificationDevice(
    id: $checkedConvert('id', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String),
    token: $checkedConvert('token', (v) => v as String),
    provider: $checkedConvert(
      'provider',
      (v) => $enumDecode(_$PushNotificationProviderEnumMap, v),
    ),
    platform: $checkedConvert(
      'platform',
      (v) => $enumDecode(_$DevicePlatformEnumMap, v),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => dateTimeFromJson(v as String?),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => dateTimeFromJson(v as String?),
    ),
  );
  return val;
});

Map<String, dynamic> _$PushNotificationDeviceToJson(
  PushNotificationDevice instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'token': instance.token,
  'provider': _$PushNotificationProviderEnumMap[instance.provider]!,
  'platform': _$DevicePlatformEnumMap[instance.platform]!,
  'createdAt': dateTimeToJson(instance.createdAt),
  'updatedAt': dateTimeToJson(instance.updatedAt),
};

const _$PushNotificationProviderEnumMap = {
  PushNotificationProvider.firebase: 'firebase',
  PushNotificationProvider.oneSignal: 'oneSignal',
};

const _$DevicePlatformEnumMap = {
  DevicePlatform.ios: 'ios',
  DevicePlatform.android: 'android',
};
