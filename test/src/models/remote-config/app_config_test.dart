// ignore_for_file: strict_raw_type, avoid_dynamic_calls

import 'package:ht_shared/ht_shared.dart'; // Import the barrel file
import 'package:test/test.dart';

void main() {
  group('AppConfig', () {
    const mockUserPreferenceLimits = UserPreferenceLimits(
      guestFollowedItemsLimit: 5,
      guestSavedHeadlinesLimit: 10,
      authenticatedFollowedItemsLimit: 15,
      authenticatedSavedHeadlinesLimit: 30,
      premiumFollowedItemsLimit: 30,
      premiumSavedHeadlinesLimit: 100,
    );

    const appConfig = AppConfig(
      id: 'app_config',
      userPreferenceLimits: mockUserPreferenceLimits,
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(appConfig, isA<AppConfig>());
        expect(appConfig.id, 'app_config');
        expect(appConfig.userPreferenceLimits, mockUserPreferenceLimits);
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
          'userPreferenceLimits': {
            'guestFollowedItemsLimit': 5,
            'guestSavedHeadlinesLimit': 10,
            'authenticatedFollowedItemsLimit': 15,
            'authenticatedSavedHeadlinesLimit': 30,
            'premiumFollowedItemsLimit': 30,
            'premiumSavedHeadlinesLimit': 100,
          },
        };

        final result = AppConfig.fromJson(json);

        expect(result, appConfig);
      });

      test(
        'returns correct instance from JSON with missing optional fields',
        () {
          final json = {
            'id': 'default_config',
            // Missing userPreferenceLimits
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
        },
      );
    });

    group('toJson', () {
      test('returns correct JSON map with all fields', () {
        final json = appConfig.toJson();

        expect(json['id'], 'app_config');
        expect(json['userPreferenceLimits'], isA<Map>());
        expect(json['userPreferenceLimits']['guestFollowedItemsLimit'], 5);
        // Add checks for other limits if needed, but testing the nested model's toJson is sufficient
      });

      test('returns correct JSON map with default nested fields', () {
        const defaultConfig = AppConfig(id: 'default_config');
        final json = defaultConfig.toJson();

        expect(json['id'], 'default_config');
        expect(json['userPreferenceLimits'], isA<Map>());
        expect(json['userPreferenceLimits']['guestFollowedItemsLimit'], 5);
        // Add checks for other default limits
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        const config1 = AppConfig(
          id: 'config-1',
          userPreferenceLimits: mockUserPreferenceLimits,
        );
        const config2 = AppConfig(
          id: 'config-1',
          userPreferenceLimits: mockUserPreferenceLimits,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = AppConfig(
          id: 'config-2',
          userPreferenceLimits: mockUserPreferenceLimits,
        );
        const differentLimits = UserPreferenceLimits(
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
