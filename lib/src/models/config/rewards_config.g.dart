// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardsConfig _$RewardsConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RewardsConfig', json, ($checkedConvert) {
      final val = RewardsConfig(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        rewards: $checkedConvert(
          'rewards',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$RewardTypeEnumMap, k),
              RewardDetails.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RewardsConfigToJson(RewardsConfig instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'rewards': instance.rewards.map(
        (k, e) => MapEntry(_$RewardTypeEnumMap[k]!, e.toJson()),
      ),
    };

const _$RewardTypeEnumMap = {
  RewardType.adFree: 'adFree',
  RewardType.dailyDigest: 'dailyDigest',
};

RewardDetails _$RewardDetailsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RewardDetails', json, ($checkedConvert) {
      final val = RewardDetails(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        durationDays: $checkedConvert(
          'durationDays',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RewardDetailsToJson(RewardDetails instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'durationDays': instance.durationDays,
    };
