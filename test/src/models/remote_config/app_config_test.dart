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

    const mockAdConfig = AdConfig(
      guestAdFrequency: 5,
      guestAdPlacementInterval: 3,
      authenticatedAdFrequency: 10,
      authenticatedAdPlacementInterval: 5,
      premiumAdFrequency: 0,
      premiumAdPlacementInterval: 0,
    );

    const mockEngagementContentConfig = EngagementContentConfig(
      guestDaysBetweenEngagementContentShows: 7,
      standardUserDaysBetweenEngagementContentShows: 14,
      premiumUserDaysBetweenEngagementContentShows: 30,
      adminDaysBetweenEngagementContentShows: 999,
    );

    const appConfig = AppConfig(
      id: 'app_config',
      userPreferenceLimits: mockUserPreferenceConfig,
      adConfig: mockAdConfig,
      engagementContentConfig: mockEngagementContentConfig,
    );

    group('constructor', () {
      test('returns correct instance with all configs provided', () {
        expect(appConfig, isA<AppConfig>());
        expect(appConfig.id, 'app_config');
        expect(appConfig.userPreferenceLimits, mockUserPreferenceConfig);
        expect(appConfig.adConfig, mockAdConfig);
        expect(appConfig.engagementContentConfig, mockEngagementContentConfig);
      });

      test('defaults nested configs when not provided', () {
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
          'ad_config': mockAdConfig.toJson(),
          'engagement_content_config': mockEngagementContentConfig.toJson(),
        };

        final result = AppConfig.fromJson(json);
        expect(result, appConfig); // appConfig now includes all mocks
      });

      test(
        'returns correct instance from JSON with missing optional configs',
        () {
          final json = {
            'id': 'default_config',
            // Missing user_preference_limits, ad_config, engagement_content_config
          };

          final result = AppConfig.fromJson(json);
          const expectedDefaultAppConfig = AppConfig(id: 'default_config');

          // Should match the default values from AppConfig constructor
          expect(result.id, 'default_config');
          expect(
            result.userPreferenceLimits,
            expectedDefaultAppConfig.userPreferenceLimits,
          );
          expect(result.adConfig, expectedDefaultAppConfig.adConfig);
          expect(
            result.engagementContentConfig,
            expectedDefaultAppConfig.engagementContentConfig,
          );
        },
      );
    });

    group('toJson', () {
      test('returns correct JSON map with all fields', () {
        final json = appConfig.toJson();

        expect(json['id'], 'app_config');
        expect(
          json['user_preference_limits'],
          mockUserPreferenceConfig.toJson(),
        );
        expect(json['ad_config'], mockAdConfig.toJson());
        expect(
          json['engagement_content_config'],
          mockEngagementContentConfig.toJson(),
        );
      });

      test('returns correct JSON map with default nested fields', () {
        const defaultConfig = AppConfig(id: 'default_config');
        final json = defaultConfig.toJson();

        expect(json['id'], 'default_config');
        expect(
          json['user_preference_limits'],
          const UserPreferenceConfig(
            guestFollowedItemsLimit: 5,
            guestSavedHeadlinesLimit: 10,
            authenticatedFollowedItemsLimit: 15,
            authenticatedSavedHeadlinesLimit: 30,
            premiumFollowedItemsLimit: 30,
            premiumSavedHeadlinesLimit: 100,
          ).toJson(),
        );
        expect(
          json['ad_config'],
          const AdConfig(
            guestAdFrequency: 5,
            guestAdPlacementInterval: 3,
            authenticatedAdFrequency: 10,
            authenticatedAdPlacementInterval: 5,
            premiumAdFrequency: 0,
            premiumAdPlacementInterval: 0,
          ).toJson(),
        );
        expect(
          json['engagement_content_config'],
          const EngagementContentConfig(
            guestDaysBetweenEngagementContentShows: 7,
            standardUserDaysBetweenEngagementContentShows: 14,
            premiumUserDaysBetweenEngagementContentShows: 30,
            adminDaysBetweenEngagementContentShows: 999,
          ).toJson(),
        );
      });
    });

    group('copyWith', () {
      test('copies correctly when no arguments are provided', () {
        final copy = appConfig.copyWith();
        expect(copy, appConfig);
      });

      test('copies correctly when all arguments are provided', () {
        const newId = 'new-app-config';
        const newUserPrefs = UserPreferenceConfig(
          guestFollowedItemsLimit: 1,
          guestSavedHeadlinesLimit: 1,
          authenticatedFollowedItemsLimit: 1,
          authenticatedSavedHeadlinesLimit: 1,
          premiumFollowedItemsLimit: 1,
          premiumSavedHeadlinesLimit: 1,
        );
        const newAdConfig = AdConfig(
          guestAdFrequency: 1,
          guestAdPlacementInterval: 1,
          authenticatedAdFrequency: 1,
          authenticatedAdPlacementInterval: 1,
          premiumAdFrequency: 1,
          premiumAdPlacementInterval: 1,
        );
        const newEngagementConfig = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 1,
          premiumUserDaysBetweenEngagementContentShows: 1,
          adminDaysBetweenEngagementContentShows: 1,
        );

        final copy = appConfig.copyWith(
          id: newId,
          userPreferenceLimits: newUserPrefs,
          adConfig: newAdConfig,
          engagementContentConfig: newEngagementConfig,
        );

        expect(copy.id, newId);
        expect(copy.userPreferenceLimits, newUserPrefs);
        expect(copy.adConfig, newAdConfig);
        expect(copy.engagementContentConfig, newEngagementConfig);
      });

      test('copies correctly when some arguments are provided', () {
        const newId = 'partial-copy-id';
        const newEngagementConfig = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 100,
          standardUserDaysBetweenEngagementContentShows: 200,
          premiumUserDaysBetweenEngagementContentShows: 300,
          adminDaysBetweenEngagementContentShows: 400,
        );
        final copy = appConfig.copyWith(
          id: newId,
          engagementContentConfig: newEngagementConfig,
        );
        expect(copy.id, newId);
        expect(copy.userPreferenceLimits, appConfig.userPreferenceLimits);
        expect(copy.adConfig, appConfig.adConfig);
        expect(copy.engagementContentConfig, newEngagementConfig);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        const config1 = AppConfig(
          id: 'config-1',
          userPreferenceLimits: mockUserPreferenceConfig,
          adConfig: mockAdConfig,
          engagementContentConfig: mockEngagementContentConfig,
        );
        const config2 = AppConfig(
          id: 'config-1',
          userPreferenceLimits: mockUserPreferenceConfig,
          adConfig: mockAdConfig,
          engagementContentConfig: mockEngagementContentConfig,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = AppConfig(
          id: 'config-2',
          userPreferenceLimits: mockUserPreferenceConfig,
          adConfig: mockAdConfig,
          engagementContentConfig: mockEngagementContentConfig,
        );
        const differentEngagementConfig = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1, // Different
          standardUserDaysBetweenEngagementContentShows: 14,
          premiumUserDaysBetweenEngagementContentShows: 30,
          adminDaysBetweenEngagementContentShows: 999,
        );
        const config2 = AppConfig(
          id: 'config-2',
          userPreferenceLimits: mockUserPreferenceConfig,
          adConfig: mockAdConfig,
          engagementContentConfig: differentEngagementConfig,
        );
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
