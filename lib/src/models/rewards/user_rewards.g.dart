// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rewards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRewards _$UserRewardsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserRewards', json, ($checkedConvert) {
      final val = UserRewards(
        id: $checkedConvert('id', (v) => v as String),
        userId: $checkedConvert('userId', (v) => v as String),
        activeRewards: $checkedConvert(
          'activeRewards',
          (v) => _activeRewardsFromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserRewardsToJson(UserRewards instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'activeRewards': _activeRewardsToJson(instance.activeRewards),
    };
