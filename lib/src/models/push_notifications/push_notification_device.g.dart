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
    platform: $checkedConvert(
      'platform',
      (v) => $enumDecode(_$DevicePlatformEnumMap, v),
    ),
    providerTokens: $checkedConvert(
      'providerTokens',
      (v) => PushNotificationDevice._providerTokensFromJson(
        v as Map<String, dynamic>,
      ),
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
  'platform': _$DevicePlatformEnumMap[instance.platform]!,
  'providerTokens': PushNotificationDevice._providerTokensToJson(
    instance.providerTokens,
  ),
  'createdAt': dateTimeToJson(instance.createdAt),
  'updatedAt': dateTimeToJson(instance.updatedAt),
};

const _$DevicePlatformEnumMap = {
  DevicePlatform.ios: 'ios',
  DevicePlatform.android: 'android',
};
