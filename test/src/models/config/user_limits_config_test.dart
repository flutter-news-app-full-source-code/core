import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('UserLimitsConfig', () {
    // Derive the test subject from the main remote config fixture.
    final UserLimitsConfigFixture =
        remoteConfigsFixturesData.first.UserLimitsConfig;

    group('constructor', () {
      test('returns correct instance', () {
        expect(UserLimitsConfigFixture, isA<UserLimitsConfig>());
        expect(
          UserLimitsConfigFixture.followedItemsLimit[AppUserRole.guestUser],
          isA<int>(),
        );
        expect(
          UserLimitsConfigFixture.savedHeadlinesLimit[AppUserRole
              .premiumUser],
          isA<int>(),
        );
      });
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = UserLimitsConfigFixture.toJson();
        final result = UserLimitsConfig.fromJson(json);
        expect(result, UserLimitsConfigFixture);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final newFollowedItemsLimit = Map.of(
          UserLimitsConfigFixture.followedItemsLimit,
        );
        newFollowedItemsLimit[AppUserRole.guestUser] = 6;

        final newSavedHeadlinesLimit = Map.of(
          UserLimitsConfigFixture.savedHeadlinesLimit,
        );
        newSavedHeadlinesLimit[AppUserRole.premiumUser] = 101;

        final updatedConfig = UserLimitsConfigFixture.copyWith(
          followedItemsLimit: newFollowedItemsLimit,
          savedHeadlinesLimit: newSavedHeadlinesLimit,
        );

        expect(updatedConfig.followedItemsLimit[AppUserRole.guestUser], 6);
        expect(
          updatedConfig.savedHeadlinesLimit[AppUserRole.guestUser],
          UserLimitsConfigFixture.savedHeadlinesLimit[AppUserRole
              .guestUser],
        );
        expect(updatedConfig.savedHeadlinesLimit[AppUserRole.premiumUser], 101);
        expect(updatedConfig, isNot(equals(UserLimitsConfigFixture)));
      });

      test('returns the same instance if no changes are made', () {
        final updatedConfig = UserLimitsConfigFixture.copyWith();
        expect(updatedConfig, equals(UserLimitsConfigFixture));
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final config1 = UserLimitsConfigFixture.copyWith();
        final config2 = UserLimitsConfigFixture.copyWith();
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        final config1 = UserLimitsConfigFixture.copyWith();
        final newFollowedItemsLimit = Map.of(
          UserLimitsConfigFixture.followedItemsLimit,
        );
        newFollowedItemsLimit[AppUserRole.guestUser] = 99;
        final config2 = UserLimitsConfigFixture.copyWith(
          followedItemsLimit: newFollowedItemsLimit,
        );
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
