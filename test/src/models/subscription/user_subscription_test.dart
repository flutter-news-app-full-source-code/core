import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserSubscription', () {
    final validUntil = DateTime(2024, 12, 31);
    final userSubscription = UserSubscription(
      id: 'sub_123',
      userId: 'user_123',
      tier: AccessTier.premium,
      status: SubscriptionStatus.active,
      provider: StoreProviders.apple,
      validUntil: validUntil,
      willAutoRenew: true,
      originalTransactionId: 'tx_123',
    );

    test('supports value equality', () {
      expect(
        userSubscription,
        equals(
          UserSubscription(
            id: 'sub_123',
            userId: 'user_123',
            tier: AccessTier.premium,
            status: SubscriptionStatus.active,
            provider: StoreProviders.apple,
            validUntil: validUntil,
            willAutoRenew: true,
            originalTransactionId: 'tx_123',
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(userSubscription.props, [
        'sub_123',
        'user_123',
        AccessTier.premium,
        SubscriptionStatus.active,
        StoreProviders.apple,
        validUntil,
        true,
        'tx_123',
      ]);
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        expect(userSubscription.copyWith(), equals(userSubscription));
      });

      test('returns a new object with updated values', () {
        expect(
          userSubscription.copyWith(
            status: SubscriptionStatus.expired,
            willAutoRenew: false,
          ),
          equals(
            UserSubscription(
              id: 'sub_123',
              userId: 'user_123',
              tier: AccessTier.premium,
              status: SubscriptionStatus.expired,
              provider: StoreProviders.apple,
              validUntil: validUntil,
              willAutoRenew: false,
              originalTransactionId: 'tx_123',
            ),
          ),
        );
      });
    });

    group('fromJson', () {
      test('works correctly', () {
        final json = {
          'id': 'sub_123',
          'userId': 'user_123',
          'tier': 'premium',
          'status': 'active',
          'provider': 'apple',
          'validUntil': validUntil.toIso8601String(),
          'willAutoRenew': true,
          'originalTransactionId': 'tx_123',
        };
        expect(UserSubscription.fromJson(json), equals(userSubscription));
      });
    });

    group('toJson', () {
      test('works correctly', () {
        final json = userSubscription.toJson();
        expect(json, {
          'id': 'sub_123',
          'userId': 'user_123',
          'tier': 'premium',
          'status': 'active',
          'provider': 'apple',
          'validUntil': validUntil.toIso8601String(),
          'willAutoRenew': true,
          'originalTransactionId': 'tx_123',
        });
      });
    });
  });
}
