import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SubscriptionConfig', () {
    const monthlyPlan = PlanDetails(
      enabled: true,
      isRecommended: false,
      appleProductId: 'monthly_apple',
      googleProductId: 'monthly_google',
    );

    const annualPlan = PlanDetails(
      enabled: true,
      isRecommended: true,
      appleProductId: 'annual_apple',
      googleProductId: 'annual_google',
    );

    const subscriptionConfig = SubscriptionConfig(
      enabled: true,
      monthlyPlan: monthlyPlan,
      annualPlan: annualPlan,
    );

    test('supports value equality', () {
      expect(
        subscriptionConfig,
        equals(
          const SubscriptionConfig(
            enabled: true,
            monthlyPlan: monthlyPlan,
            annualPlan: annualPlan,
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(subscriptionConfig.props, [true, monthlyPlan, annualPlan]);
    });

    group('copyWith', () {
      test('returns the same object if no arguments are provided', () {
        expect(subscriptionConfig.copyWith(), equals(subscriptionConfig));
      });

      test('returns a new object with updated values', () {
        final newMonthlyPlan = monthlyPlan.copyWith(enabled: false);
        expect(
          subscriptionConfig.copyWith(
            enabled: false,
            monthlyPlan: newMonthlyPlan,
          ),
          equals(
            SubscriptionConfig(
              enabled: false,
              monthlyPlan: newMonthlyPlan,
              annualPlan: annualPlan,
            ),
          ),
        );
      });
    });

    group('fromJson', () {
      test('works correctly', () {
        final json = {
          'enabled': true,
          'monthlyPlan': monthlyPlan.toJson(),
          'annualPlan': annualPlan.toJson(),
        };
        expect(SubscriptionConfig.fromJson(json), equals(subscriptionConfig));
      });
    });

    group('toJson', () {
      test('works correctly', () {
        final json = subscriptionConfig.toJson();
        expect(json, {
          'enabled': true,
          'monthlyPlan': monthlyPlan.toJson(),
          'annualPlan': annualPlan.toJson(),
        });
      });
    });
  });
}
