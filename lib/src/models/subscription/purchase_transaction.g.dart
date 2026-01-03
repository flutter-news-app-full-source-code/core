// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseTransaction _$PurchaseTransactionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PurchaseTransaction', json, ($checkedConvert) {
      final val = PurchaseTransaction(
        planId: $checkedConvert('planId', (v) => v as String),
        provider: $checkedConvert(
          'provider',
          (v) => $enumDecode(_$StoreProvidersEnumMap, v),
        ),
        providerReceipt: $checkedConvert('providerReceipt', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$PurchaseTransactionToJson(
  PurchaseTransaction instance,
) => <String, dynamic>{
  'planId': instance.planId,
  'provider': _$StoreProvidersEnumMap[instance.provider]!,
  'providerReceipt': instance.providerReceipt,
};

const _$StoreProvidersEnumMap = {
  StoreProviders.apple: 'apple',
  StoreProviders.google: 'google',
};
