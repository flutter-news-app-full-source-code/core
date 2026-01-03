// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationConfig _$PushNotificationConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PushNotificationConfig', json, ($checkedConvert) {
  final val = PushNotificationConfig(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    primaryProvider: $checkedConvert(
      'primaryProvider',
      (v) => $enumDecode(_$PushNotificationProvidersEnumMap, v),
    ),
    deliveryConfigs: $checkedConvert(
      'deliveryConfigs',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$PushNotificationSubscriptionDeliveryTypeEnumMap, k),
          e as bool,
        ),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$PushNotificationConfigToJson(
  PushNotificationConfig instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'primaryProvider':
      _$PushNotificationProvidersEnumMap[instance.primaryProvider]!,
  'deliveryConfigs': instance.deliveryConfigs.map(
    (k, e) =>
        MapEntry(_$PushNotificationSubscriptionDeliveryTypeEnumMap[k]!, e),
  ),
};

const _$PushNotificationProvidersEnumMap = {
  PushNotificationProviders.firebase: 'firebase',
  PushNotificationProviders.oneSignal: 'oneSignal',
};

const _$PushNotificationSubscriptionDeliveryTypeEnumMap = {
  PushNotificationSubscriptionDeliveryType.breakingOnly: 'breakingOnly',
  PushNotificationSubscriptionDeliveryType.dailyDigest: 'dailyDigest',
  PushNotificationSubscriptionDeliveryType.weeklyRoundup: 'weeklyRoundup',
};
