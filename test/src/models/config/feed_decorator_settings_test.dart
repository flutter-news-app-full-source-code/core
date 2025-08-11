import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDecoratorSettings', () {
    // Fixtures derived from the main remote config fixture
    final callToActionFixture = remoteConfigsFixturesData
        .first.feedDecoratorConfig[FeedDecoratorType.linkAccount]!
      as CallToActionSettings;

    final contentCollectionFixture = remoteConfigsFixturesData
        .first.feedDecoratorConfig[FeedDecoratorType.suggestedTopics]!
      as ContentCollectionSettings;

    group('Polymorphic Deserialization', () {
      test('correctly deserializes CallToActionSettings', () {
        final json = callToActionFixture.toJson();
        final result = FeedDecoratorSettings.fromJson(json);

        expect(result, isA<CallToActionSettings>());
        expect(result, equals(callToActionFixture));
        expect(result.category, FeedDecoratorCategory.callToAction);
      });

      test('correctly deserializes ContentCollectionSettings', () {
        final json = contentCollectionFixture.toJson();
        final result = FeedDecoratorSettings.fromJson(json);

        expect(result, isA<ContentCollectionSettings>());
        expect(result, equals(contentCollectionFixture));
        expect(result.category, FeedDecoratorCategory.contentCollection);
      });
    });

    group('CallToActionSettings', () {
      test('supports value equality', () {
        final settings1 = callToActionFixture.copyWith();
        final settings2 = callToActionFixture.copyWith();
        expect(settings1, equals(settings2));
      });

      test('props are correct', () {
        expect(callToActionFixture.props, [
          callToActionFixture.category,
          callToActionFixture.enabled,
          callToActionFixture.defaultDaysBetweenViews,
          callToActionFixture.roleOverrides,
        ]);
      });

      test('JSON round trip', () {
        final json = callToActionFixture.toJson();
        final fromJson = CallToActionSettings.fromJson(json);
        expect(fromJson, equals(callToActionFixture));
      });
    });

    group('ContentCollectionSettings', () {
      test('supports value equality', () {
        final settings1 = contentCollectionFixture.copyWith();
        final settings2 = contentCollectionFixture.copyWith();
        expect(settings1, equals(settings2));
      });

      test('props are correct', () {
        expect(contentCollectionFixture.props, [
          contentCollectionFixture.category,
          contentCollectionFixture.enabled,
          contentCollectionFixture.defaultDaysBetweenViews,
          contentCollectionFixture.roleOverrides,
          contentCollectionFixture.itemsToDisplay,
        ]);
      });

      test('JSON round trip', () {
        final json = contentCollectionFixture.toJson();
        final fromJson = ContentCollectionSettings.fromJson(json);
        expect(fromJson, equals(contentCollectionFixture));
      });
    });
  });
}
