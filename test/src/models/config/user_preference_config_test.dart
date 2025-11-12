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
        expect(
          userPreferenceConfigFixture.followedItemsLimit[AppUserRole.guestUser],
          isA<int>(),
        );
        expect(
          userPreferenceConfigFixture.savedHeadlinesLimit[AppUserRole
              .premiumUser],
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
        final newFollowedItemsLimit = Map.of(
          userPreferenceConfigFixture.followedItemsLimit,
        );
        newFollowedItemsLimit[AppUserRole.guestUser] = 6;

        final newSavedHeadlinesLimit = Map.of(
          userPreferenceConfigFixture.savedHeadlinesLimit,
        );
        newSavedHeadlinesLimit[AppUserRole.premiumUser] = 101;

        final updatedConfig = userPreferenceConfigFixture.copyWith(
          followedItemsLimit: newFollowedItemsLimit,
          savedHeadlinesLimit: newSavedHeadlinesLimit,
        );

        expect(updatedConfig.followedItemsLimit[AppUserRole.guestUser], 6);
        expect(
          updatedConfig.savedHeadlinesLimit[AppUserRole.guestUser],
          userPreferenceConfigFixture.savedHeadlinesLimit[AppUserRole
              .guestUser],
        );
        expect(updatedConfig.savedHeadlinesLimit[AppUserRole.premiumUser], 101);
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
        final newFollowedItemsLimit = Map.of(
          userPreferenceConfigFixture.followedItemsLimit,
        );
        newFollowedItemsLimit[AppUserRole.guestUser] = 99;
        final config2 = userPreferenceConfigFixture.copyWith(
          followedItemsLimit: newFollowedItemsLimit,
        );
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
