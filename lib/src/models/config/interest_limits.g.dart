// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_limits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterestLimits _$InterestLimitsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InterestLimits', json, ($checkedConvert) {
      final val = InterestLimits(
        total: $checkedConvert('total', (v) => (v as num).toInt()),
        pinnedFeedFilters: $checkedConvert(
          'pinnedFeedFilters',
          (v) => (v as num).toInt(),
        ),
        notifications: $checkedConvert(
          'notifications',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$PushNotificationSubscriptionDeliveryTypeEnumMap, k),
              (e as num).toInt(),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InterestLimitsToJson(InterestLimits instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pinnedFeedFilters': instance.pinnedFeedFilters,
      'notifications': instance.notifications.map(
        (k, e) =>
            MapEntry(_$PushNotificationSubscriptionDeliveryTypeEnumMap[k]!, e),
      ),
    };

const _$PushNotificationSubscriptionDeliveryTypeEnumMap = {
  PushNotificationSubscriptionDeliveryType.breakingOnly: 'breakingOnly',
  PushNotificationSubscriptionDeliveryType.dailyDigest: 'dailyDigest',
  PushNotificationSubscriptionDeliveryType.weeklyRoundup: 'weeklyRoundup',
};
