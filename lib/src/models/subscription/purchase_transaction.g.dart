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
          (v) => $enumDecode(_$StoreProviderEnumMap, v),
        ),
        providerReceipt: $checkedConvert('providerReceipt', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$PurchaseTransactionToJson(
  PurchaseTransaction instance,
) => <String, dynamic>{
  'planId': instance.planId,
  'provider': _$StoreProviderEnumMap[instance.provider]!,
  'providerReceipt': instance.providerReceipt,
};

const _$StoreProviderEnumMap = {
  StoreProvider.apple: 'apple',
  StoreProvider.google: 'google',
  StoreProvider.stripe: 'stripe',
};
