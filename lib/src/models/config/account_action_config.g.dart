// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_action_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountActionConfig _$AccountActionConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AccountActionConfig', json, ($checkedConvert) {
      final val = AccountActionConfig(
        guestDaysBetweenAccountActions: $checkedConvert(
          'guestDaysBetweenAccountActions',
          (v) => (v as num).toInt(),
        ),
        standardUserDaysBetweenAccountActions: $checkedConvert(
          'standardUserDaysBetweenAccountActions',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AccountActionConfigToJson(
  AccountActionConfig instance,
) => <String, dynamic>{
  'guestDaysBetweenAccountActions': instance.guestDaysBetweenAccountActions,
  'standardUserDaysBetweenAccountActions':
      instance.standardUserDaysBetweenAccountActions,
};
