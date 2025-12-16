import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SubscriptionStartedPayload', () {
    const payload = SubscriptionStartedPayload(
      productId: 'premium_monthly',
      price: 9.99,
      currency: 'USD',
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          'productId': 'premium_monthly',
          'price': 9.99,
          'currency': 'USD',
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = SubscriptionStartedPayload(
          productId: 'premium_monthly',
          price: 9.99,
          currency: 'USD',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = SubscriptionStartedPayload(
          productId: 'premium_yearly',
          price: 99.99,
          currency: 'USD',
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [
          payload.productId,
          payload.price,
          payload.currency,
        ]);
      });
    });
  });
}
