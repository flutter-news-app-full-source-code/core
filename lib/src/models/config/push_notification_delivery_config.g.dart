// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_delivery_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationDeliveryConfig _$PushNotificationDeliveryConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PushNotificationDeliveryConfig', json, ($checkedConvert) {
  final val = PushNotificationDeliveryConfig(
    visibleTo: $checkedConvert(
      'visibleTo',
      (v) => (v as Map<String, dynamic>).map(
        (k, e) => MapEntry(
          $enumDecode(_$AppUserRoleEnumMap, k),
          PushNotificationDeliveryRoleConfig.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$PushNotificationDeliveryConfigToJson(
  PushNotificationDeliveryConfig instance,
) => <String, dynamic>{
  'visibleTo': instance.visibleTo.map(
    (k, e) => MapEntry(_$AppUserRoleEnumMap[k]!, e.toJson()),
  ),
};

const _$AppUserRoleEnumMap = {
  AppUserRole.premiumUser: 'premiumUser',
  AppUserRole.standardUser: 'standardUser',
  AppUserRole.guestUser: 'guestUser',
};
