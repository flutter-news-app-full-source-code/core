// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountAction _$AccountActionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountAction',
      json,
      ($checkedConvert) {
        final val = AccountAction(
          title: $checkedConvert('title', (v) => v as String),
          accountActionType: $checkedConvert('account_action_type',
              (v) => $enumDecodeNullable(_$AccountActionTypeEnumMap, v)),
          description: $checkedConvert('description', (v) => v as String?),
          callToActionText:
              $checkedConvert('call_to_action_text', (v) => v as String?),
          callToActionUrl:
              $checkedConvert('call_to_action_url', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'accountActionType': 'account_action_type',
        'callToActionText': 'call_to_action_text',
        'callToActionUrl': 'call_to_action_url'
      },
    );

Map<String, dynamic> _$AccountActionToJson(AccountAction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
      if (_$AccountActionTypeEnumMap[instance.accountActionType]
          case final value?)
        'account_action_type': value,
      if (instance.callToActionText case final value?)
        'call_to_action_text': value,
      if (instance.callToActionUrl case final value?)
        'call_to_action_url': value,
    };

const _$AccountActionTypeEnumMap = {
  AccountActionType.linkAccount: 'link_account',
  AccountActionType.upgrade: 'upgrade',
};
