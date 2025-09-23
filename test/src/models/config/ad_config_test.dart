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
        adConfigFixture.interstitialAdConfiguration,
        isA<InterstitialAdConfiguration>(),
      );
    });

    test('supports value equality', () {
      final config1 = adConfigFixture.copyWith();
      final config2 = adConfigFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = adConfigFixture.copyWith(
        primaryAdPlatform: AdPlatformType.local,
        feedAdConfiguration: adConfigFixture.feedAdConfiguration.copyWith(
          enabled: false,
        ),
        interstitialAdConfiguration:
            adConfigFixture.interstitialAdConfiguration.copyWith(
          enabled: false,
        ),
      );

      expect(updatedConfig.primaryAdPlatform, AdPlatformType.local);
      expect(updatedConfig.feedAdConfiguration.enabled, isFalse);
      expect(updatedConfig.interstitialAdConfiguration.enabled, isFalse);
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
