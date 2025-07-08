import 'package:ht_shared/ht_shared.dart'; // Import the barrel file
import 'package:test/test.dart';

void main() {
  group('UserPreferenceConfig', () {
    const userPreferenceConfig = UserPreferenceConfig(
      guestFollowedItemsLimit: 5,
      guestSavedHeadlinesLimit: 10,
      authenticatedFollowedItemsLimit: 15,
      authenticatedSavedHeadlinesLimit: 30,
      premiumFollowedItemsLimit: 30,
      premiumSavedHeadlinesLimit: 100,
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(userPreferenceConfig, isA<UserPreferenceConfig>());
        expect(userPreferenceConfig.guestFollowedItemsLimit, 5);
        expect(userPreferenceConfig.guestSavedHeadlinesLimit, 10);
        expect(userPreferenceConfig.authenticatedFollowedItemsLimit, 15);
        expect(userPreferenceConfig.authenticatedSavedHeadlinesLimit, 30);
        expect(userPreferenceConfig.premiumFollowedItemsLimit, 30);
        expect(userPreferenceConfig.premiumSavedHeadlinesLimit, 100);
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = {
          'guestFollowedItemsLimit': 5,
          'guestSavedHeadlinesLimit': 10,
          'authenticatedFollowedItemsLimit': 15,
          'authenticatedSavedHeadlinesLimit': 30,
          'premiumFollowedItemsLimit': 30,
          'premiumSavedHeadlinesLimit': 100,
        };

        final result = UserPreferenceConfig.fromJson(json);

        expect(result, userPreferenceConfig);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = userPreferenceConfig.toJson();

        expect(json['guestFollowedItemsLimit'], 5);
        expect(json['guestSavedHeadlinesLimit'], 10);
        expect(json['authenticatedFollowedItemsLimit'], 15);
        expect(json['authenticatedSavedHeadlinesLimit'], 30);
        expect(json['premiumFollowedItemsLimit'], 30);
        expect(json['premiumSavedHeadlinesLimit'], 100);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final updatedConfig = userPreferenceConfig.copyWith(
          guestFollowedItemsLimit: 6,
          premiumSavedHeadlinesLimit: 101,
        );

        expect(updatedConfig.guestFollowedItemsLimit, 6);
        expect(updatedConfig.guestSavedHeadlinesLimit, 10); // Unchanged
        expect(updatedConfig.premiumSavedHeadlinesLimit, 101);
        expect(updatedConfig, isNot(equals(userPreferenceConfig)));
      });

      test('returns the same instance if no changes are made', () {
        final updatedConfig = userPreferenceConfig.copyWith();
        expect(updatedConfig, equals(userPreferenceConfig));
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        const config1 = UserPreferenceConfig(
          guestFollowedItemsLimit: 5,
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        const config2 = UserPreferenceConfig(
          guestFollowedItemsLimit: 5,
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = UserPreferenceConfig(
          guestFollowedItemsLimit: 5,
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        const config2 = UserPreferenceConfig(
          guestFollowedItemsLimit: 6, // Different limit
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
