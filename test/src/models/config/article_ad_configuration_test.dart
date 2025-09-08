import 'package:core/core.dart';
import 'package:core/src/enums/banner_ad_shape.dart';
import 'package:test/test.dart';

void main() {
  group('ArticleAdConfiguration', () {
    final articleAdConfigurationFixture =
        remoteConfigsFixturesData.first.adConfig.articleAdConfiguration;

    test('can be instantiated', () {
      expect(articleAdConfigurationFixture, isA<ArticleAdConfiguration>());
      expect(articleAdConfigurationFixture.enabled, isTrue);
      expect(
        articleAdConfigurationFixture.bannerAdShape,
        BannerAdShape.rectangle,
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
        bannerAdShape: BannerAdShape.rectangle,
      );

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig.bannerAdShape, BannerAdShape.rectangle);
      expect(updatedConfig, isNot(equals(articleAdConfigurationFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = articleAdConfigurationFixture.copyWith();
      expect(updatedConfig, equals(articleAdConfigurationFixture));
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
