// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_delivery_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationDeliveryConfig _$PushNotificationDeliveryConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PushNotificationDeliveryConfig', json, ($checkedConvert) {
  final val = PushNotificationDeliveryConfig(
    enabled: $checkedConvert('enabled', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$PushNotificationDeliveryConfigToJson(
  PushNotificationDeliveryConfig instance,
) => <String, dynamic>{'enabled': instance.enabled};
