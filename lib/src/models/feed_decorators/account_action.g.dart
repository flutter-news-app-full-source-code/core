// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountAction _$AccountActionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AccountAction', json, ($checkedConvert) {
      final val = AccountAction(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        accountActionType: $checkedConvert(
          'accountActionType',
          (v) => $enumDecode(_$AccountActionTypeEnumMap, v),
        ),
        description: $checkedConvert('description', (v) => v as String),
        callToActionText: $checkedConvert(
          'callToActionText',
          (v) => v as String,
        ),
        callToActionUrl: $checkedConvert('callToActionUrl', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$AccountActionToJson(
  AccountAction instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'accountActionType': _$AccountActionTypeEnumMap[instance.accountActionType]!,
  'callToActionText': instance.callToActionText,
  'callToActionUrl': instance.callToActionUrl,
};

const _$AccountActionTypeEnumMap = {
  AccountActionType.linkAccount: 'linkAccount',
  AccountActionType.upgrade: 'upgrade',
};
