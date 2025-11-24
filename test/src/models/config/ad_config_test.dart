import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AdConfig', () {
    final adConfigFixture = remoteConfigsFixturesData.first.adConfig;

    test('can be instantiated', () {
      expect(adConfigFixture, isA<AdConfig>());
      expect(adConfigFixture.primaryAdPlatform, AdPlatformType.demo);
      expect(
        adConfigFixture.platformAdIdentifiers,
        isA<Map<AdPlatformType, AdPlatformIdentifiers>>(),
      );
      expect(adConfigFixture.feedAdConfiguration, isA<FeedAdConfiguration>());
      expect(
        adConfigFixture.articleAdConfiguration,
        isA<ArticleAdConfiguration>(),
      );
      expect(
        adConfigFixture.navigationAdConfiguration,
        isA<NavigationAdConfiguration>(),
      );
    });

    test('supports value equality', () {
      final config1 = adConfigFixture.copyWith();
      final config2 = adConfigFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = adConfigFixture.copyWith(
        primaryAdPlatform: AdPlatformType.admob,
        feedAdConfiguration: adConfigFixture.feedAdConfiguration.copyWith(
          enabled: false,
        ),
        navigationAdConfiguration: adConfigFixture.navigationAdConfiguration
            .copyWith(enabled: false),
      );

      expect(updatedConfig.primaryAdPlatform, AdPlatformType.admob);
      expect(updatedConfig.feedAdConfiguration.enabled, isFalse);
      expect(updatedConfig.navigationAdConfiguration.enabled, isFalse);
      expect(updatedConfig, isNot(equals(adConfigFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = adConfigFixture.copyWith();
      expect(updatedConfig, equals(adConfigFixture));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = adConfigFixture.toJson();
        final result = AdConfig.fromJson(json);
        expect(result, equals(adConfigFixture));
      });
    });
  });
}
