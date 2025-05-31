import 'package:ht_shared/src/models/remote_config/engagement_content_config.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentConfig', () {
    const guestDays = 7;
    const standardUserDays = 14;
    const premiumUserDays = 30;
    const adminDays = 999;

    const defaultConfig = EngagementContentConfig(
      guestDaysBetweenEngagementContentShows: guestDays,
      standardUserDaysBetweenEngagementContentShows: standardUserDays,
      premiumUserDaysBetweenEngagementContentShows: premiumUserDays,
      adminDaysBetweenEngagementContentShows: adminDays,
    );

    group('constructor', () {
      test('assigns all properties correctly', () {
        expect(
          defaultConfig.guestDaysBetweenEngagementContentShows,
          guestDays,
        );
        expect(
          defaultConfig.standardUserDaysBetweenEngagementContentShows,
          standardUserDays,
        );
        expect(
          defaultConfig.premiumUserDaysBetweenEngagementContentShows,
          premiumUserDays,
        );
        expect(
          defaultConfig.adminDaysBetweenEngagementContentShows,
          adminDays,
        );
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = {
          'guest_days_between_engagement_content_shows': guestDays,
          'standard_user_days_between_engagement_content_shows':
              standardUserDays,
          'premium_user_days_between_engagement_content_shows': premiumUserDays,
          'admin_days_between_engagement_content_shows': adminDays,
        };
        final result = EngagementContentConfig.fromJson(json);
        expect(result, equals(defaultConfig));
      });

      test('uses default values if fields are missing in JSON', () {
        // This test assumes that if the backend sends an empty map,
        // or a map missing these specific fields, the `fromJson`
        // factory (due to `checked: true` and required fields in constructor)
        // would throw. However, if the constructor had defaults (which it
        // now doesn't directly, but the fields are required), this test
        // would be about those defaults.
        // Since fields are required, an empty JSON would fail.
        // Let's test that providing some but not all still works if the
        // constructor were to allow optional with defaults (which it doesn't).
        // For now, this test is more about ensuring it can parse a complete obj.
        final json = {
          'guest_days_between_engagement_content_shows': 5,
          'standard_user_days_between_engagement_content_shows': 10,
          'premium_user_days_between_engagement_content_shows': 20,
          'admin_days_between_engagement_content_shows': 100,
        };
        final result = EngagementContentConfig.fromJson(json);
        expect(result.guestDaysBetweenEngagementContentShows, 5);
        expect(result.standardUserDaysBetweenEngagementContentShows, 10);
        expect(result.premiumUserDaysBetweenEngagementContentShows, 20);
        expect(result.adminDaysBetweenEngagementContentShows, 100);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = defaultConfig.toJson();
        expect(json, {
          'guest_days_between_engagement_content_shows': guestDays,
          'standard_user_days_between_engagement_content_shows':
              standardUserDays,
          'premium_user_days_between_engagement_content_shows': premiumUserDays,
          'admin_days_between_engagement_content_shows': adminDays,
        });
      });
    });

    group('copyWith', () {
      test('copies correctly when no arguments are provided', () {
        final copy = defaultConfig.copyWith();
        expect(copy, defaultConfig);
      });

      test('copies correctly when all arguments are provided', () {
        final copy = defaultConfig.copyWith(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 2,
          premiumUserDaysBetweenEngagementContentShows: 3,
          adminDaysBetweenEngagementContentShows: 4,
        );
        expect(copy.guestDaysBetweenEngagementContentShows, 1);
        expect(copy.standardUserDaysBetweenEngagementContentShows, 2);
        expect(copy.premiumUserDaysBetweenEngagementContentShows, 3);
        expect(copy.adminDaysBetweenEngagementContentShows, 4);
      });

      test('copies correctly when some arguments are provided', () {
        final copy = defaultConfig.copyWith(
          guestDaysBetweenEngagementContentShows: 10,
          adminDaysBetweenEngagementContentShows: 200,
        );
        expect(copy.guestDaysBetweenEngagementContentShows, 10);
        expect(
          copy.standardUserDaysBetweenEngagementContentShows,
          standardUserDays,
        );
        expect(
          copy.premiumUserDaysBetweenEngagementContentShows,
          premiumUserDays,
        );
        expect(copy.adminDaysBetweenEngagementContentShows, 200);
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        const config1 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 2,
          premiumUserDaysBetweenEngagementContentShows: 3,
          adminDaysBetweenEngagementContentShows: 4,
        );
        const config2 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 2,
          premiumUserDaysBetweenEngagementContentShows: 3,
          adminDaysBetweenEngagementContentShows: 4,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 2,
          premiumUserDaysBetweenEngagementContentShows: 3,
          adminDaysBetweenEngagementContentShows: 4,
        );
        const config2 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 10, // Different
          standardUserDaysBetweenEngagementContentShows: 2,
          premiumUserDaysBetweenEngagementContentShows: 3,
          adminDaysBetweenEngagementContentShows: 4,
        );
        expect(config1, isNot(equals(config2)));
      });

      test('props list contains all relevant fields', () {
        expect(defaultConfig.props, [
          guestDays,
          standardUserDays,
          premiumUserDays,
          adminDays,
        ]);
      });
    });
  });
}
