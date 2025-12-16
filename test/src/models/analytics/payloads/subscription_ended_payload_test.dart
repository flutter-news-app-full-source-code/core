import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SubscriptionEndedPayload', () {
    const payload = SubscriptionEndedPayload(
      productId: 'premium_monthly',
      reason: 'billing_error',
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.productId: 'premium_monthly',
          AnalyticsParameterKeys.reason: 'billing_error',
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = SubscriptionEndedPayload(
          productId: 'premium_monthly',
          reason: 'billing_error',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = SubscriptionEndedPayload(
          productId: 'premium_yearly',
          reason: 'user_cancelled',
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.productId, payload.reason]);
      });
    });
  });
}
