import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserPreferenceConfig', () {
    // Derive the test subject from the main remote config fixture.
    final userPreferenceConfigFixture =
        remoteConfigsFixturesData.first.userPreferenceConfig;

    group('constructor', () {
      test('returns correct instance', () {
        expect(userPreferenceConfigFixture, isA<UserPreferenceConfig>());
        expect(userPreferenceConfigFixture.guestFollowedItemsLimit, isA<int>());
        expect(
          userPreferenceConfigFixture.premiumSavedHeadlinesLimit,
          isA<int>(),
        );
      });
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = userPreferenceConfigFixture.toJson();
        final result = UserPreferenceConfig.fromJson(json);
        expect(result, userPreferenceConfigFixture);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final updatedConfig = userPreferenceConfigFixture.copyWith(
          guestFollowedItemsLimit: 6,
          premiumSavedHeadlinesLimit: 101,
        );

        expect(updatedConfig.guestFollowedItemsLimit, 6);
        expect(
          updatedConfig.guestSavedHeadlinesLimit,
          userPreferenceConfigFixture.guestSavedHeadlinesLimit,
        ); // Unchanged
        expect(updatedConfig.premiumSavedHeadlinesLimit, 101);
        expect(updatedConfig, isNot(equals(userPreferenceConfigFixture)));
      });

      test('returns the same instance if no changes are made', () {
        final updatedConfig = userPreferenceConfigFixture.copyWith();
        expect(updatedConfig, equals(userPreferenceConfigFixture));
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final config1 = userPreferenceConfigFixture.copyWith();
        final config2 = userPreferenceConfigFixture.copyWith();
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        final config1 = userPreferenceConfigFixture.copyWith();
        final config2 = userPreferenceConfigFixture.copyWith(
          guestFollowedItemsLimit: 99,
        ); // Different limit
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
