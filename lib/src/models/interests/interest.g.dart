// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interest _$InterestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Interest', json, ($checkedConvert) {
  final val = Interest(
    id: $checkedConvert('id', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    criteria: $checkedConvert(
      'criteria',
      (v) => InterestCriteria.fromJson(v as Map<String, dynamic>),
    ),
    isPinnedFeedFilter: $checkedConvert('isPinnedFeedFilter', (v) => v as bool),
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

Map<String, dynamic> _$InterestToJson(Interest instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'name': instance.name,
  'criteria': instance.criteria.toJson(),
  'isPinnedFeedFilter': instance.isPinnedFeedFilter,
  'deliveryTypes': instance.deliveryTypes
      .map((e) => _$PushNotificationSubscriptionDeliveryTypeEnumMap[e]!)
      .toList(),
};

const _$PushNotificationSubscriptionDeliveryTypeEnumMap = {
  PushNotificationSubscriptionDeliveryType.breakingOnly: 'breakingOnly',
  PushNotificationSubscriptionDeliveryType.dailyDigest: 'dailyDigest',
  PushNotificationSubscriptionDeliveryType.weeklyRoundup: 'weeklyRoundup',
};
