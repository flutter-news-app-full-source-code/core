// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSubscription _$UserSubscriptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserSubscription', json, ($checkedConvert) {
      final val = UserSubscription(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        tier: $checkedConvert(
          'tier',
          (v) => $enumDecode(_$AccessTierEnumMap, v),
        ),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$SubscriptionStatusEnumMap, v),
        ),
        provider: $checkedConvert(
          'provider',
          (v) => $enumDecode(_$StoreProviderEnumMap, v),
        ),
        validUntil: $checkedConvert(
          'validUntil',
          (v) => const DateTimeConverter().fromJson(v as String),
        ),
        willAutoRenew: $checkedConvert('willAutoRenew', (v) => v as bool),
        originalTransactionId: $checkedConvert(
          'originalTransactionId',
          (v) => v as String,
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserSubscriptionToJson(UserSubscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'tier': _$AccessTierEnumMap[instance.tier]!,
      'status': _$SubscriptionStatusEnumMap[instance.status]!,
      'provider': _$StoreProviderEnumMap[instance.provider]!,
      'validUntil': const DateTimeConverter().toJson(instance.validUntil),
      'willAutoRenew': instance.willAutoRenew,
      'originalTransactionId': instance.originalTransactionId,
    };

const _$AccessTierEnumMap = {
  AccessTier.guest: 'guest',
  AccessTier.standard: 'standard',
  AccessTier.premium: 'premium',
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.gracePeriod: 'gracePeriod',
  SubscriptionStatus.billingIssue: 'billingIssue',
  SubscriptionStatus.canceled: 'canceled',
  SubscriptionStatus.expired: 'expired',
};

const _$StoreProviderEnumMap = {
  StoreProvider.apple: 'apple',
  StoreProvider.google: 'google',
};
