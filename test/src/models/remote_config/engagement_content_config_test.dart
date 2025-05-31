import 'package:ht_shared/src/models/remote_config/engagement_content_config.dart';
import 'package:test/test.dart';

void main() {
  group('EngagementContentConfig', () {
    const guestDays = 7;
    const standardUserDays = 14;

    const defaultConfig = EngagementContentConfig(
      guestDaysBetweenEngagementContentShows: guestDays,
      standardUserDaysBetweenEngagementContentShows: standardUserDays,
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
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = {
          'guest_days_between_engagement_content_shows': guestDays,
          'standard_user_days_between_engagement_content_shows':
              standardUserDays,
        };
        final result = EngagementContentConfig.fromJson(json);
        expect(result, equals(defaultConfig));
      });

      test('parses a complete object with different values', () {
        final json = {
          'guest_days_between_engagement_content_shows': 5,
          'standard_user_days_between_engagement_content_shows': 10,
        };
        final result = EngagementContentConfig.fromJson(json);
        expect(result.guestDaysBetweenEngagementContentShows, 5);
        expect(result.standardUserDaysBetweenEngagementContentShows, 10);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = defaultConfig.toJson();
        expect(json, {
          'guest_days_between_engagement_content_shows': guestDays,
          'standard_user_days_between_engagement_content_shows':
              standardUserDays,
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
        );
        expect(copy.guestDaysBetweenEngagementContentShows, 1);
        expect(copy.standardUserDaysBetweenEngagementContentShows, 2);
      });

      test('copies correctly when some arguments are provided', () {
        final copy = defaultConfig.copyWith(
          guestDaysBetweenEngagementContentShows: 10,
        );
        expect(copy.guestDaysBetweenEngagementContentShows, 10);
        expect(
          copy.standardUserDaysBetweenEngagementContentShows,
          standardUserDays,
        );
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        const config1 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 2,
        );
        const config2 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 2,
        );
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        const config1 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 1,
          standardUserDaysBetweenEngagementContentShows: 2,
        );
        const config2 = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: 10, // Different
          standardUserDaysBetweenEngagementContentShows: 2,
        );
        expect(config1, isNot(equals(config2)));
      });

      test('props list contains all relevant fields', () {
        expect(defaultConfig.props, [
          guestDays,
          standardUserDays,
        ]);
      });
    });
  });
}
