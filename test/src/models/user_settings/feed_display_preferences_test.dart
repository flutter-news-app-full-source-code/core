import 'package:ht_shared/src/models/user_settings/feed_display_preferences.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDisplayPreferences', () {
    // Helper function to create a sample FeedDisplayPreferences object
    FeedDisplayPreferences createSubject({
      HeadlineDensity headlineDensity = HeadlineDensity.standard,
      HeadlineImageStyle headlineImageStyle = HeadlineImageStyle.smallThumbnail,
      bool showSourceInHeadlineFeed = true,
      bool showPublishDateInHeadlineFeed = true,
    }) {
      return FeedDisplayPreferences(
        headlineDensity: headlineDensity,
        headlineImageStyle: headlineImageStyle,
        showSourceInHeadlineFeed: showSourceInHeadlineFeed,
        showPublishDateInHeadlineFeed: showPublishDateInHeadlineFeed,
      );
    }

    // Helper function to create a sample JSON map
    Map<String, dynamic> createJson({
      String headlineDensity = 'standard',
      String headlineImageStyle = 'smallThumbnail',
      bool showSourceInHeadlineFeed = true,
      bool showPublishDateInHeadlineFeed = true,
    }) {
      return {
        'headline_density': headlineDensity,
        'headline_image_style': headlineImageStyle,
        'show_source_in_headline_feed': showSourceInHeadlineFeed,
        'show_publish_date_in_headline_feed': showPublishDateInHeadlineFeed,
      };
    }

    test('supports value equality', () {
      expect(createSubject(), equals(createSubject()));
    });

    group('fromJson', () {
      test('returns correct object when all fields are provided', () {
        final json = createJson(
          headlineDensity: 'compact',
          headlineImageStyle: 'largeThumbnail',
          showSourceInHeadlineFeed: false,
          showPublishDateInHeadlineFeed: false,
        );
        expect(
          FeedDisplayPreferences.fromJson(json),
          createSubject(
            headlineDensity: HeadlineDensity.compact,
            headlineImageStyle: HeadlineImageStyle.largeThumbnail,
            showSourceInHeadlineFeed: false,
            showPublishDateInHeadlineFeed: false,
          ),
        );
      });

      test(
        'throws CheckedFromJsonException when required fields are missing',
        () {
          final json = <String, dynamic>{}; // Empty JSON
          expect(
            () => FeedDisplayPreferences.fromJson(json),
            throwsA(isA<CheckedFromJsonException>()),
          );
        },
      );

      test('throws CheckedFromJsonException for missing headline_density', () {
        final json = createJson()..remove('headline_density');
        expect(
          () => FeedDisplayPreferences.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing headline_image_style', () {
        final json = createJson()..remove('headline_image_style');
        expect(
          () => FeedDisplayPreferences.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing show_source_in_headline_feed', () {
        final json = createJson()..remove('show_source_in_headline_feed');
        expect(
          () => FeedDisplayPreferences.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });

      test('throws CheckedFromJsonException for missing show_publish_date_in_headline_feed', () {
        final json = createJson()..remove('show_publish_date_in_headline_feed');
        expect(
          () => FeedDisplayPreferences.fromJson(json),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final preferences = createSubject(
          headlineDensity: HeadlineDensity.compact,
          headlineImageStyle: HeadlineImageStyle.largeThumbnail,
          showSourceInHeadlineFeed: false,
          showPublishDateInHeadlineFeed: false,
        );
        expect(preferences.toJson(), createJson(
          headlineDensity: 'compact',
          headlineImageStyle: 'largeThumbnail',
          showSourceInHeadlineFeed: false,
          showPublishDateInHeadlineFeed: false,
        ));
      });

      test('returns default values in JSON if not explicitly set', () {
        expect(createSubject().toJson(), createJson());
      });
    });

    group('copyWith', () {
      test('returns a new object with updated headlineDensity', () {
        final defaultPreferences = createSubject();
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
        final defaultPreferences = createSubject();
        final updated = defaultPreferences.copyWith(
          headlineImageStyle: HeadlineImageStyle.largeThumbnail,
        );
        expect(updated.headlineImageStyle, HeadlineImageStyle.largeThumbnail);
        expect(updated.headlineDensity, defaultPreferences.headlineDensity);
      });

      test('returns a new object with updated showSourceInHeadlineFeed', () {
        final defaultPreferences = createSubject();
        final updated = defaultPreferences.copyWith(
          showSourceInHeadlineFeed: false,
        );
        expect(updated.showSourceInHeadlineFeed, isFalse);
        expect(updated.showPublishDateInHeadlineFeed, isTrue);
      });

      test(
        'returns a new object with updated showPublishDateInHeadlineFeed',
        () {
          final defaultPreferences = createSubject();
          final updated = defaultPreferences.copyWith(
            showPublishDateInHeadlineFeed: false,
          );
          expect(updated.showPublishDateInHeadlineFeed, isFalse);
          expect(updated.showSourceInHeadlineFeed, isTrue);
        },
      );

      test('returns a new object with multiple updated properties', () {
        final defaultPreferences = createSubject();
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
