import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('PurchaseTransaction', () {
    const purchaseTransaction = PurchaseTransaction(
      planId: 'premium_monthly',
      provider: StoreProviders.apple,
      providerReceipt: 'base64_receipt_data',
    );

    test('supports value equality', () {
      expect(
        purchaseTransaction,
        equals(
          const PurchaseTransaction(
            planId: 'premium_monthly',
            provider: StoreProviders.apple,
            providerReceipt: 'base64_receipt_data',
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(purchaseTransaction.props, [
        'premium_monthly',
        StoreProviders.apple,
        'base64_receipt_data',
      ]);
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        expect(purchaseTransaction.copyWith(), equals(purchaseTransaction));
      });

      test('returns a new object with updated values', () {
        expect(
          purchaseTransaction.copyWith(provider: StoreProviders.google),
          equals(
            const PurchaseTransaction(
              planId: 'premium_monthly',
              provider: StoreProviders.google,
              providerReceipt: 'base64_receipt_data',
            ),
          ),
        );
      });
    });

    group('fromJson', () {
      test('works correctly', () {
        final json = {
          'planId': 'premium_monthly',
          'provider': 'apple',
          'providerReceipt': 'base64_receipt_data',
        };
        expect(PurchaseTransaction.fromJson(json), equals(purchaseTransaction));
      });
    });

    group('toJson', () {
      test('works correctly', () {
        final json = purchaseTransaction.toJson();
        expect(json, {
          'planId': 'premium_monthly',
          'provider': 'apple',
          'providerReceipt': 'base64_receipt_data',
        });
      });
    });
  });
}
