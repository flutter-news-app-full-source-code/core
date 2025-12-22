import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('PlanDetails', () {
    const planDetails = PlanDetails(
      enabled: true,
      isRecommended: true,
      appleProductId: 'com.example.app.premium_monthly',
      googleProductId: 'premium_monthly',
      stripePriceId: 'price_12345',
    );

    test('supports value equality', () {
      expect(
        planDetails,
        equals(
          const PlanDetails(
            enabled: true,
            isRecommended: true,
            appleProductId: 'com.example.app.premium_monthly',
            googleProductId: 'premium_monthly',
            stripePriceId: 'price_12345',
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(planDetails.props, [
        true, // enabled
        true, // isRecommended
        'com.example.app.premium_monthly', // appleProductId
        'premium_monthly', // googleProductId
        'price_12345', // stripePriceId
      ]);
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        expect(planDetails.copyWith(), equals(planDetails));
      });

      test('returns a new object with updated values', () {
        expect(
          planDetails.copyWith(
            enabled: false,
            isRecommended: false,
            appleProductId: const ValueWrapper('new_apple_id'),
            googleProductId: const ValueWrapper('new_google_id'),
            stripePriceId: const ValueWrapper('new_stripe_id'),
          ),
          equals(
            const PlanDetails(
              enabled: false,
              isRecommended: false,
              appleProductId: 'new_apple_id',
              googleProductId: 'new_google_id',
              stripePriceId: 'new_stripe_id',
            ),
          ),
        );
      });

      test('returns a new object with null values updated', () {
        expect(
          planDetails.copyWith(
            appleProductId: const ValueWrapper(null),
            googleProductId: const ValueWrapper(null),
            stripePriceId: const ValueWrapper(null),
          ),
          equals(
            const PlanDetails(
              enabled: true,
              isRecommended: true,
              appleProductId: null,
              googleProductId: null,
              stripePriceId: null,
            ),
          ),
        );
      });
    });

    group('fromJson', () {
      test('works correctly', () {
        final json = {
          'enabled': true,
          'isRecommended': true,
          'appleProductId': 'com.example.app.premium_monthly',
          'googleProductId': 'premium_monthly',
          'stripePriceId': 'price_12345',
        };
        expect(PlanDetails.fromJson(json), equals(planDetails));
      });
    });

    group('toJson', () {
      test('works correctly', () {
        final json = planDetails.toJson();
        expect(json, {
          'enabled': true,
          'isRecommended': true,
          'appleProductId': 'com.example.app.premium_monthly',
          'googleProductId': 'premium_monthly',
          'stripePriceId': 'price_12345',
        });
      });
    });
  });
}
