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
      (v) => $enumDecode(_$PushNotificationProviderEnumMap, v),
    ),
    providerConfigs: $checkedConvert(
      'providerConfigs',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$PushNotificationProviderEnumMap, k),
          PushNotificationProviderConfig.fromJson(e as Map<String, dynamic>),
        ),
      ),
    ),
    deliveryConfigs: $checkedConvert(
      'deliveryConfigs',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$PushNotificationSubscriptionDeliveryTypeEnumMap, k),
          PushNotificationDeliveryConfig.fromJson(e as Map<String, dynamic>),
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
      _$PushNotificationProviderEnumMap[instance.primaryProvider]!,
  'providerConfigs': instance.providerConfigs.map(
    (k, e) => MapEntry(_$PushNotificationProviderEnumMap[k]!, e.toJson()),
  ),
  'deliveryConfigs': instance.deliveryConfigs.map(
    (k, e) => MapEntry(
      _$PushNotificationSubscriptionDeliveryTypeEnumMap[k]!,
      e.toJson(),
    ),
  ),
};

const _$PushNotificationProviderEnumMap = {
  PushNotificationProvider.firebase: 'firebase',
  PushNotificationProvider.oneSignal: 'oneSignal',
};

const _$PushNotificationSubscriptionDeliveryTypeEnumMap = {
  PushNotificationSubscriptionDeliveryType.breakingOnly: 'breakingOnly',
  PushNotificationSubscriptionDeliveryType.dailyDigest: 'dailyDigest',
  PushNotificationSubscriptionDeliveryType.weeklyRoundup: 'weeklyRoundup',
};
