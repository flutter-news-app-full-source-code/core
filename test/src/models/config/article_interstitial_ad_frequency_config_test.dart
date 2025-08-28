import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ArticleInterstitialAdFrequencyConfig', () {
    final interstitialAdFrequencyConfigFixture = remoteConfigsFixturesData
        .first
        .adConfig
        .articleAdConfiguration
        .interstitialAdConfiguration
        .frequencyConfig;

    test('can be instantiated', () {
      expect(
        interstitialAdFrequencyConfigFixture,
        isA<ArticleInterstitialAdFrequencyConfig>(),
      );
      expect(
        interstitialAdFrequencyConfigFixture
            .guestArticlesToReadBeforeShowingInterstitialAds,
        5,
      );
      expect(
        interstitialAdFrequencyConfigFixture
            .standardUserArticlesToReadBeforeShowingInterstitialAds,
        10,
      );
      expect(
        interstitialAdFrequencyConfigFixture
            .premiumUserArticlesToReadBeforeShowingInterstitialAds,
        50000,
      );
    });

    test('supports value equality', () {
      final config1 = interstitialAdFrequencyConfigFixture.copyWith();
      final config2 = interstitialAdFrequencyConfigFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = interstitialAdFrequencyConfigFixture.copyWith(
        guestArticlesToReadBeforeShowingInterstitialAds: 6,
        standardUserArticlesToReadBeforeShowingInterstitialAds: 11,
      );

      expect(
        updatedConfig.guestArticlesToReadBeforeShowingInterstitialAds,
        6,
      );
      expect(
        updatedConfig.standardUserArticlesToReadBeforeShowingInterstitialAds,
        11,
      );
      expect(
        updatedConfig,
        isNot(equals(interstitialAdFrequencyConfigFixture)),
      );
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = interstitialAdFrequencyConfigFixture.copyWith();
      expect(updatedConfig, equals(interstitialAdFrequencyConfigFixture));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = interstitialAdFrequencyConfigFixture.toJson();
        final result = ArticleInterstitialAdFrequencyConfig.fromJson(json);
        expect(result, equals(interstitialAdFrequencyConfigFixture));
      });
    });
  });
}
