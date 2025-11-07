// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_notification_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PushNotificationSubscription _$PushNotificationSubscriptionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PushNotificationSubscription', json, ($checkedConvert) {
  final val = PushNotificationSubscription(
    id: $checkedConvert('id', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    topics: $checkedConvert(
      'topics',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    sources: $checkedConvert(
      'sources',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    countries: $checkedConvert(
      'countries',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    deliveryTypes: $checkedConvert(
      'deliveryTypes',
      (v) => (v as List<dynamic>)
          .map(
            (e) => $enumDecode(
              _$PushNotificationSubscriptionDeliveryTypeEnumMap,
              e,
            ),
          )
          .toSet(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PushNotificationSubscriptionToJson(
  PushNotificationSubscription instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'topics': instance.topics,
  'sources': instance.sources,
  'countries': instance.countries,
  'deliveryTypes': instance.deliveryTypes
      .map((e) => _$PushNotificationSubscriptionDeliveryTypeEnumMap[e]!)
      .toList(),
};

const _$PushNotificationSubscriptionDeliveryTypeEnumMap = {
  PushNotificationSubscriptionDeliveryType.breakingOnly: 'breakingOnly',
  PushNotificationSubscriptionDeliveryType.dailyDigest: 'dailyDigest',
  PushNotificationSubscriptionDeliveryType.weeklyRoundup: 'weeklyRoundup',
};
