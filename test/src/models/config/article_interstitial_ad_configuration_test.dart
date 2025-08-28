import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ArticleInterstitialAdConfiguration', () {
    final interstitialAdConfigurationFixture = remoteConfigsFixturesData
        .first.adConfig.articleAdConfiguration.interstitialAdConfiguration;

    test('can be instantiated', () {
      expect(
        interstitialAdConfigurationFixture,
        isA<ArticleInterstitialAdConfiguration>(),
      );
      expect(interstitialAdConfigurationFixture.enabled, isTrue);
      expect(interstitialAdConfigurationFixture.adType, AdType.interstitial);
      expect(
        interstitialAdConfigurationFixture.frequencyConfig,
        isA<ArticleInterstitialAdFrequencyConfig>(),
      );
    });

    test('supports value equality', () {
      final config1 = interstitialAdConfigurationFixture.copyWith();
      final config2 = interstitialAdConfigurationFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = interstitialAdConfigurationFixture.copyWith(
        enabled: false,
      );

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig, isNot(equals(interstitialAdConfigurationFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = interstitialAdConfigurationFixture.copyWith();
      expect(updatedConfig, equals(interstitialAdConfigurationFixture));
    });

    test('throws AssertionError if adType is not interstitial', () {
      expect(
        () => ArticleInterstitialAdConfiguration(
          enabled: true,
          adType: AdType.banner,
          frequencyConfig: interstitialAdConfigurationFixture.frequencyConfig,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = interstitialAdConfigurationFixture.toJson();
        final result = ArticleInterstitialAdConfiguration.fromJson(json);
        expect(result, equals(interstitialAdConfigurationFixture));
      });
    });
  });
}
