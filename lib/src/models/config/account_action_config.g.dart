// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_action_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountActionConfig _$AccountActionConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AccountActionConfig', json, ($checkedConvert) {
      final val = AccountActionConfig(
        guestDaysBetweenActions: $checkedConvert(
          'guestDaysBetweenActions',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$FeedActionTypeEnumMap, k),
              (e as num).toInt(),
            ),
          ),
        ),
        standardUserDaysBetweenActions: $checkedConvert(
          'standardUserDaysBetweenActions',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$FeedActionTypeEnumMap, k),
              (e as num).toInt(),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AccountActionConfigToJson(
  AccountActionConfig instance,
) => <String, dynamic>{
  'guestDaysBetweenActions': instance.guestDaysBetweenActions.map(
    (k, e) => MapEntry(_$FeedActionTypeEnumMap[k]!, e),
  ),
  'standardUserDaysBetweenActions': instance.standardUserDaysBetweenActions.map(
    (k, e) => MapEntry(_$FeedActionTypeEnumMap[k]!, e),
  ),
};

const _$FeedActionTypeEnumMap = {
  FeedActionType.linkAccount: 'linkAccount',
  FeedActionType.upgrade: 'upgrade',
  FeedActionType.rateApp: 'rateApp',
  FeedActionType.enableNotifications: 'enableNotifications',
  FeedActionType.followTopics: 'followTopics',
  FeedActionType.followSources: 'followSources',
};
