import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('PlanDetails', () {
    const planDetails = PlanDetails(
      enabled: true,
      isRecommended: true,
      appleProductId: 'com.example.app.premium_monthly',
      googleProductId: 'premium_monthly',
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
          ),
          equals(
            const PlanDetails(
              enabled: false,
              isRecommended: false,
              appleProductId: 'new_apple_id',
              googleProductId: 'new_google_id',
            ),
          ),
        );
      });

      test('returns a new object with null values updated', () {
        expect(
          planDetails.copyWith(
            enabled: false,
            appleProductId: const ValueWrapper(null),
            googleProductId: const ValueWrapper(null),
          ),
          equals(
            const PlanDetails(
              enabled: false,
              isRecommended: true,
              appleProductId: null,
              googleProductId: null,
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
        });
      });
    });

    group('assertions', () {
      test(
        'throws AssertionError when enabled is true but no IDs are provided',
        () {
          expect(
            () => PlanDetails(
              enabled: true,
              isRecommended: false,
              appleProductId: null,
              googleProductId: null,
            ),
            throwsA(isA<AssertionError>()),
          );
        },
      );

      test(
        'throws AssertionError when enabled is true and IDs are empty strings',
        () {
          expect(
            () => PlanDetails(
              enabled: true,
              isRecommended: false,
              appleProductId: '',
              googleProductId: '',
            ),
            throwsA(isA<AssertionError>()),
          );
        },
      );

      test('does not throw when enabled is true and one ID is valid', () {
        expect(
          () => const PlanDetails(
            enabled: true,
            isRecommended: false,
            appleProductId: 'id',
          ),
          returnsNormally,
        );
      });

      test('does not throw when enabled is false', () {
        expect(
          () => const PlanDetails(enabled: false, isRecommended: false),
          returnsNormally,
        );
      });
    });
  });
}
