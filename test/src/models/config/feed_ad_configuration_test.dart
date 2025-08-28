import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedAdConfiguration', () {
    final feedAdConfigurationFixture =
        remoteConfigsFixturesData.first.adConfig.feedAdConfiguration;

    test('can be instantiated', () {
      expect(feedAdConfigurationFixture, isA<FeedAdConfiguration>());
      expect(feedAdConfigurationFixture.enabled, isTrue);
      expect(feedAdConfigurationFixture.adType, AdType.native);
      expect(
        feedAdConfigurationFixture.frequencyConfig,
        isA<FeedAdFrequencyConfig>(),
      );
    });

    test('supports value equality', () {
      final config1 = feedAdConfigurationFixture.copyWith();
      final config2 = feedAdConfigurationFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = feedAdConfigurationFixture.copyWith(
        enabled: false,
        adType: AdType.banner,
      );

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig.adType, AdType.banner);
      expect(updatedConfig, isNot(equals(feedAdConfigurationFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = feedAdConfigurationFixture.copyWith();
      expect(updatedConfig, equals(feedAdConfigurationFixture));
    });

    test('throws AssertionError if adType is not native or banner', () {
      expect(
        () => FeedAdConfiguration(
          enabled: true,
          adType: AdType.interstitial,
          frequencyConfig: feedAdConfigurationFixture.frequencyConfig,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = feedAdConfigurationFixture.toJson();
        final result = FeedAdConfiguration.fromJson(json);
        expect(result, equals(feedAdConfigurationFixture));
      });
    });
  });
}
