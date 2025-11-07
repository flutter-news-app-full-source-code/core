// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_delivery_role_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationDeliveryRoleConfig _$PushNotificationDeliveryRoleConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PushNotificationDeliveryRoleConfig', json, (
  $checkedConvert,
) {
  final val = PushNotificationDeliveryRoleConfig(
    subscriptionLimit: $checkedConvert(
      'subscriptionLimit',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PushNotificationDeliveryRoleConfigToJson(
  PushNotificationDeliveryRoleConfig instance,
) => <String, dynamic>{'subscriptionLimit': instance.subscriptionLimit};
