import 'package:core/src/enums/subscription/subscription_status.dart';
import 'package:test/test.dart';

void main() {
  group('SubscriptionStatus', () {
    test('has correct number of values', () {
      expect(SubscriptionStatus.values.length, 5);
    });

    group('serialization', () {
      test('uses correct string values for json serialization', () {
        expect(SubscriptionStatus.active.name, 'active');
        expect(SubscriptionStatus.gracePeriod.name, 'gracePeriod');
        expect(SubscriptionStatus.billingIssue.name, 'billingIssue');
        expect(SubscriptionStatus.canceled.name, 'canceled');
        expect(SubscriptionStatus.expired.name, 'expired');
      });

      test('can be created from string value for json deserialization', () {
        expect(
          SubscriptionStatus.values.byName('active'),
          SubscriptionStatus.active,
        );
        expect(
          SubscriptionStatus.values.byName('gracePeriod'),
          SubscriptionStatus.gracePeriod,
        );
        expect(
          SubscriptionStatus.values.byName('billingIssue'),
          SubscriptionStatus.billingIssue,
        );
        expect(
          SubscriptionStatus.values.byName('canceled'),
          SubscriptionStatus.canceled,
        );
        expect(
          SubscriptionStatus.values.byName('expired'),
          SubscriptionStatus.expired,
        );
      });

      test('throws ArgumentError for invalid string value', () {
        expect(
          () => SubscriptionStatus.values.byName('invalid_status'),
          throwsA(isA<ArgumentError>()),
        );
      });
    });
  });
}
