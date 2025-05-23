import 'package:ht_shared/src/models/user_settings/feed_display_preferences.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDisplayPreferences', () {
    const defaultPreferences = FeedDisplayPreferences();

    test('supports value equality', () {
      expect(defaultPreferences, const FeedDisplayPreferences());
    });

    test('has correct default values', () {
      expect(defaultPreferences.headlineDensity, HeadlineDensity.standard);
      expect(
        defaultPreferences.headlineImageStyle,
        HeadlineImageStyle.smallThumbnail,
      );
      expect(defaultPreferences.showSourceInHeadlineFeed, isTrue);
      expect(defaultPreferences.showPublishDateInHeadlineFeed, isTrue);
    });

    group('fromJson', () {
      test('returns correct object when all fields are provided', () {
        final json = <String, dynamic>{
          'headline_density': 'compact',
          'headline_image_style': 'largeThumbnail',
          'show_source_in_headline_feed': false,
          'show_publish_date_in_headline_feed': false,
        };
        expect(
          FeedDisplayPreferences.fromJson(json),
          const FeedDisplayPreferences(
            headlineDensity: HeadlineDensity.compact,
            headlineImageStyle: HeadlineImageStyle.largeThumbnail,
            showSourceInHeadlineFeed: false,
            showPublishDateInHeadlineFeed: false,
          ),
        );
      });

      test('returns correct object with default values when fields are missing',
          () {
        final json = <String, dynamic>{}; // Empty JSON
        expect(FeedDisplayPreferences.fromJson(json), defaultPreferences);
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        const preferences = FeedDisplayPreferences(
          headlineDensity: HeadlineDensity.compact,
          headlineImageStyle: HeadlineImageStyle.largeThumbnail,
          showSourceInHeadlineFeed: false,
          showPublishDateInHeadlineFeed: false,
        );
        expect(preferences.toJson(), <String, dynamic>{
          'headline_density': 'compact',
          'headline_image_style': 'largeThumbnail',
          'show_source_in_headline_feed': false,
          'show_publish_date_in_headline_feed': false,
        });
      });

      test('returns default values in JSON if not explicitly set', () {
        expect(defaultPreferences.toJson(), <String, dynamic>{
          'headline_density': 'standard',
          'headline_image_style': 'smallThumbnail',
          'show_source_in_headline_feed': true,
          'show_publish_date_in_headline_feed': true,
        });
      });
    });

    group('copyWith', () {
      test('returns a new object with updated headlineDensity', () {
        final updated = defaultPreferences.copyWith(
          headlineDensity: HeadlineDensity.compact,
        );
        expect(updated.headlineDensity, HeadlineDensity.compact);
        expect(
          updated.headlineImageStyle,
          defaultPreferences.headlineImageStyle,
        );
      });

      test('returns a new object with updated headlineImageStyle', () {
        final updated = defaultPreferences.copyWith(
          headlineImageStyle: HeadlineImageStyle.largeThumbnail,
        );
        expect(updated.headlineImageStyle, HeadlineImageStyle.largeThumbnail);
        expect(updated.headlineDensity, defaultPreferences.headlineDensity);
      });

      test('returns a new object with updated showSourceInHeadlineFeed', () {
        final updated =
            defaultPreferences.copyWith(showSourceInHeadlineFeed: false);
        expect(updated.showSourceInHeadlineFeed, isFalse);
        expect(updated.showPublishDateInHeadlineFeed, isTrue);
      });

      test('returns a new object with updated showPublishDateInHeadlineFeed',
          () {
        final updated =
            defaultPreferences.copyWith(showPublishDateInHeadlineFeed: false);
        expect(updated.showPublishDateInHeadlineFeed, isFalse);
        expect(updated.showSourceInHeadlineFeed, isTrue);
      });

      test('returns a new object with multiple updated properties', () {
        final updated = defaultPreferences.copyWith(
          headlineDensity: HeadlineDensity.compact,
          showSourceInHeadlineFeed: false,
        );
        expect(updated.headlineDensity, HeadlineDensity.compact);
        expect(updated.showSourceInHeadlineFeed, isFalse);
        expect(updated.headlineImageStyle, HeadlineImageStyle.smallThumbnail);
      });
    });
  });
}
