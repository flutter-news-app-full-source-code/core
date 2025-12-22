import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SubscriptionEndedPayload', () {
    const payload = SubscriptionEndedPayload(
      productId: 'premium_monthly',
      reason: SubscriptionEndedReason.billingError,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.productId: 'premium_monthly',
          AnalyticsParameterKeys.reason: 'billingError',
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = SubscriptionEndedPayload(
          productId: 'premium_monthly',
          reason: SubscriptionEndedReason.billingError,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = SubscriptionEndedPayload(
          productId: 'premium_yearly',
          reason: SubscriptionEndedReason.userCanceled,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.productId, payload.reason]);
      });
    });
  });
}
