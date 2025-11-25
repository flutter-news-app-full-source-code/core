import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('FeedSettings', () {
    // Derive the test subject from the main app settings fixture.
    final feedSettingsFixture = appSettingsFixturesData.first.feedSettings;

    test('supports value equality', () {
      final preferences1 = feedSettingsFixture.copyWith();
      final preferences2 = feedSettingsFixture.copyWith();
      expect(preferences1, equals(preferences2));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final original = feedSettingsFixture.copyWith(
          feedItemDensity: FeedItemDensity.compact,
          feedItemImageStyle: FeedItemImageStyle.largeThumbnail,
        );
        final json = original.toJson();
        final reconstructed = FeedSettings.fromJson(json);
        expect(reconstructed, equals(original));
      });

      test(
        'throws CheckedFromJsonException when required fields are missing',
        () {
          final json = <String, dynamic>{};
          expect(
            () => FeedSettings.fromJson(json),
            throwsA(isA<CheckedFromJsonException>()),
          );
        },
      );
    });

    group('copyWith', () {
      test('returns a new object with updated headlineDensity', () {
        final updated = feedSettingsFixture.copyWith(
          feedItemDensity: FeedItemDensity.compact,
        );
        expect(updated.feedItemDensity, FeedItemDensity.compact);
        expect(
          updated.feedItemImageStyle,
          feedSettingsFixture.feedItemImageStyle,
        );
      });

      test('returns a new object with updated showSourceInHeadlineFeed', () {
        final updated = feedSettingsFixture.copyWith(
          feedItemClickBehavior: FeedItemClickBehavior.externalNavigation,
        );
        expect(
          updated.feedItemClickBehavior,
          FeedItemClickBehavior.externalNavigation,
        );
      });
    });
  });
}
