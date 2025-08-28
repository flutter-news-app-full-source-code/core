import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ArticleAdConfiguration', () {
    final articleAdConfigurationFixture =
        remoteConfigsFixturesData.first.adConfig.articleAdConfiguration;

    test('can be instantiated', () {
      expect(articleAdConfigurationFixture, isA<ArticleAdConfiguration>());
      expect(articleAdConfigurationFixture.enabled, isTrue);
      expect(articleAdConfigurationFixture.defaultInArticleAdType, AdType.native);
      expect(
        articleAdConfigurationFixture.interstitialAdConfiguration,
        isA<ArticleInterstitialAdConfiguration>(),
      );
      expect(
        articleAdConfigurationFixture.inArticleAdSlotConfigurations,
        isA<List<InArticleAdSlotConfiguration>>(),
      );
    });

    test('supports value equality', () {
      final config1 = articleAdConfigurationFixture.copyWith();
      final config2 = articleAdConfigurationFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = articleAdConfigurationFixture.copyWith(
        enabled: false,
        defaultInArticleAdType: AdType.banner,
      );

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig.defaultInArticleAdType, AdType.banner);
      expect(updatedConfig, isNot(equals(articleAdConfigurationFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = articleAdConfigurationFixture.copyWith();
      expect(updatedConfig, equals(articleAdConfigurationFixture));
    });

    test('throws AssertionError if defaultInArticleAdType is not native or banner', () {
      expect(
        () => ArticleAdConfiguration(
          enabled: true,
          defaultInArticleAdType: AdType.interstitial,
          interstitialAdConfiguration:
              articleAdConfigurationFixture.interstitialAdConfiguration,
          inArticleAdSlotConfigurations:
              articleAdConfigurationFixture.inArticleAdSlotConfigurations,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = articleAdConfigurationFixture.toJson();
        final result = ArticleAdConfiguration.fromJson(json);
        expect(result, equals(articleAdConfigurationFixture));
      });
    });
  });
}
