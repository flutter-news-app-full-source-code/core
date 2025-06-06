// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_action_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountActionConfig _$AccountActionConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountActionConfig',
      json,
      ($checkedConvert) {
        final val = AccountActionConfig(
          guestDaysBetweenAccountActions: $checkedConvert(
            'guest_days_between_account_actions',
            (v) => (v as num).toInt(),
          ),
          standardUserDaysBetweenAccountActions: $checkedConvert(
            'standard_user_days_between_account_actions',
            (v) => (v as num).toInt(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'guestDaysBetweenAccountActions': 'guest_days_between_account_actions',
        'standardUserDaysBetweenAccountActions':
            'standard_user_days_between_account_actions',
      },
    );

Map<String, dynamic> _$AccountActionConfigToJson(
  AccountActionConfig instance,
) => <String, dynamic>{
  'guest_days_between_account_actions': instance.guestDaysBetweenAccountActions,
  'standard_user_days_between_account_actions':
      instance.standardUserDaysBetweenAccountActions,
};
