// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_filter_limits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SavedFilterLimits _$SavedFilterLimitsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SavedFilterLimits', json, ($checkedConvert) {
      final val = SavedFilterLimits(
        total: $checkedConvert('total', (v) => (v as num).toInt()),
        pinned: $checkedConvert('pinned', (v) => (v as num).toInt()),
        notificationSubscriptions: $checkedConvert(
          'notificationSubscriptions',
          (v) => (v as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              $enumDecode(_$PushNotificationSubscriptionDeliveryTypeEnumMap, k),
              (e as num).toInt(),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SavedFilterLimitsToJson(SavedFilterLimits instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pinned': instance.pinned,
      'notificationSubscriptions': instance.notificationSubscriptions?.map(
        (k, e) =>
            MapEntry(_$PushNotificationSubscriptionDeliveryTypeEnumMap[k]!, e),
      ),
    };

const _$PushNotificationSubscriptionDeliveryTypeEnumMap = {
  PushNotificationSubscriptionDeliveryType.breakingOnly: 'breakingOnly',
  PushNotificationSubscriptionDeliveryType.dailyDigest: 'dailyDigest',
  PushNotificationSubscriptionDeliveryType.weeklyRoundup: 'weeklyRoundup',
};
