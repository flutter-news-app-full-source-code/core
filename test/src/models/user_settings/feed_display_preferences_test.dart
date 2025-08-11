import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDisplayPreferences', () {
    // Derive the test subject from the main app settings fixture.
    final feedPreferencesFixture =
        userAppSettingsFixturesData.first.feedPreferences;

    test('supports value equality', () {
      final preferences1 = feedPreferencesFixture.copyWith();
      final preferences2 = feedPreferencesFixture.copyWith();
      expect(preferences1, equals(preferences2));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final original = feedPreferencesFixture.copyWith(
          headlineDensity: HeadlineDensity.compact,
          headlineImageStyle: HeadlineImageStyle.largeThumbnail,
          showSourceInHeadlineFeed: false,
          showPublishDateInHeadlineFeed: false,
        );
        final json = original.toJson();
        final reconstructed = FeedDisplayPreferences.fromJson(json);
        expect(reconstructed, equals(original));
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
    });

    group('copyWith', () {
      test('returns a new object with updated headlineDensity', () {
        final updated = feedPreferencesFixture.copyWith(
          headlineDensity: HeadlineDensity.compact,
        );
        expect(updated.headlineDensity, HeadlineDensity.compact);
        expect(
          updated.headlineImageStyle,
          feedPreferencesFixture.headlineImageStyle,
        );
      });

      test('returns a new object with updated showSourceInHeadlineFeed', () {
        final updated = feedPreferencesFixture.copyWith(
          showSourceInHeadlineFeed: false,
        );
        expect(updated.showSourceInHeadlineFeed, isFalse);
        expect(updated.showPublishDateInHeadlineFeed, isTrue);
      });
    });
  });
}
