// ignore_for_file: strict_raw_type, avoid_dynamic_calls

import 'package:ht_shared/ht_shared.dart'; // Import the barrel file
import 'package:test/test.dart';

void main() {
  group('AppConfig', () {
    const mockUserPreferenceConfig = UserPreferenceConfig(
      guestFollowedItemsLimit: 5,
      guestSavedHeadlinesLimit: 10,
      authenticatedFollowedItemsLimit: 15,
      authenticatedSavedHeadlinesLimit: 30,
      premiumFollowedItemsLimit: 30,
      premiumSavedHeadlinesLimit: 100,
    );

    const appConfig = AppConfig(
      id: 'app_config',
      userPreferenceLimits: mockUserPreferenceConfig,
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(appConfig, isA<AppConfig>());
        expect(appConfig.id, 'app_config');
        expect(appConfig.userPreferenceLimits, mockUserPreferenceConfig);
      });

      test('defaults userPreferenceLimits when not provided', () {
        const defaultConfig = AppConfig(id: 'default_config');
        // Check against the default values defined in AppConfig constructor
        expect(defaultConfig.userPreferenceLimits.guestFollowedItemsLimit, 5);
        expect(defaultConfig.userPreferenceLimits.guestSavedHeadlinesLimit, 10);
        expect(
          defaultConfig.userPreferenceLimits.authenticatedFollowedItemsLimit,
          15,
        );
        expect(
          defaultConfig.userPreferenceLimits.authenticatedSavedHeadlinesLimit,
          30,
        );
        expect(
          defaultConfig.userPreferenceLimits.premiumFollowedItemsLimit,
          30,
        );
        expect(
          defaultConfig.userPreferenceLimits.premiumSavedHeadlinesLimit,
          100,
        );
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON with all fields', () {
        final json = {
          'id': 'app_config',
          'user_preference_limits': {
            'guest_followed_items_limit': 5,
            'guest_saved_headlines_limit': 10,
            'authenticated_followed_items_limit': 15,
            'authenticated_saved_headlines_limit': 30,
            'premium_followed_items_limit': 30,
            'premium_saved_headlines_limit': 100,
          },
          // Assuming ad_config might also be present or defaulted
          'ad_config': const AdConfig(
            guestAdFrequency: 5,
            guestAdPlacementInterval: 3,
            authenticatedAdFrequency: 10,
            authenticatedAdPlacementInterval: 5,
            premiumAdFrequency: 0,
            premiumAdPlacementInterval: 0,
          ).toJson(),
        };

        final result = AppConfig.fromJson(json);
        // We need to compare with an AppConfig that also has the default adConfig
        const expectedAppConfig = AppConfig(
          id: 'app_config',
          userPreferenceLimits: mockUserPreferenceConfig,
          // adConfig will take its default from the AppConfig constructor
        );
        expect(result, expectedAppConfig);
      });

      test(
        'returns correct instance from JSON with missing optional fields',
        () {
          final json = {
            'id': 'default_config',
            // Missing user_preference_limits and ad_config
          };

          final result = AppConfig.fromJson(json);

          // Should match the default values
          expect(result.id, 'default_config');
          expect(result.userPreferenceLimits.guestFollowedItemsLimit, 5);
          expect(result.userPreferenceLimits.guestSavedHeadlinesLimit, 10);
          expect(
            result.userPreferenceLimits.authenticatedFollowedItemsLimit,
            15,
          );
          expect(
            result.userPreferenceLimits.authenticatedSavedHeadlinesLimit,
            30,
          );
          expect(result.userPreferenceLimits.premiumFollowedItemsLimit, 30);
          expect(result.userPreferenceLimits.premiumSavedHeadlinesLimit, 100);
          // Check default ad_config values
          expect(result.adConfig.guestAdFrequency, 5);
        },
      );
    });

    group('toJson', () {
      test('returns correct JSON map with all fields', () {
        final json = appConfig.toJson();

        expect(json['id'], 'app_config');
        expect(json['user_preference_limits'], isA<Map>());
        expect(json['user_preference_limits']['guest_followed_items_limit'], 5);
        expect(json['ad_config'], isA<Map>());
        expect(json['ad_config']['guest_ad_frequency'], 5);
      });

      test('returns correct JSON map with default nested fields', () {
        const defaultConfig = AppConfig(id: 'default_config');
        final json = defaultConfig.toJson();

        expect(json['id'], 'default_config');
        expect(json['user_preference_limits'], isA<Map>());
        expect(json['user_preference_limits']['guest_followed_items_limit'], 5);
        expect(json['ad_config'], isA<Map>());
        expect(json['ad_config']['guest_ad_frequency'], 5);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        const config1 = AppConfig(
          id: 'config-1',
          userPreferenceLimits: mockUserPreferenceConfig,
        );
        const config2 = AppConfig(
          id: 'config-1',
          userPreferenceLimits: mockUserPreferenceConfig,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = AppConfig(
          id: 'config-2',
          userPreferenceLimits: mockUserPreferenceConfig,
        );
        const differentLimits = UserPreferenceConfig(
          guestFollowedItemsLimit: 6, // Different limit
          guestSavedHeadlinesLimit: 10,
          authenticatedFollowedItemsLimit: 15,
          authenticatedSavedHeadlinesLimit: 30,
          premiumFollowedItemsLimit: 30,
          premiumSavedHeadlinesLimit: 100,
        );
        const config2 = AppConfig(
          id: 'config-2',
          userPreferenceLimits: differentLimits,
        );
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
