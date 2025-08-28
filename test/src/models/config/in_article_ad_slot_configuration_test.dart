import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InArticleAdSlotConfiguration', () {
    final inArticleAdSlotConfigurationFixture = remoteConfigsFixturesData
        .first
        .adConfig
        .articleAdConfiguration
        .inArticleAdSlotConfigurations
        .first;

    test('can be instantiated', () {
      expect(
        inArticleAdSlotConfigurationFixture,
        isA<InArticleAdSlotConfiguration>(),
      );
      expect(
        inArticleAdSlotConfigurationFixture.slotType,
        InArticleAdSlotType.belowMainArticleImage,
      );
      expect(inArticleAdSlotConfigurationFixture.enabled, isTrue);
    });

    test('supports value equality', () {
      final config1 = inArticleAdSlotConfigurationFixture.copyWith();
      final config2 = inArticleAdSlotConfigurationFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = inArticleAdSlotConfigurationFixture.copyWith(
        enabled: false,
      );

      expect(updatedConfig.enabled, isFalse);
      expect(updatedConfig, isNot(equals(inArticleAdSlotConfigurationFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = inArticleAdSlotConfigurationFixture.copyWith();
      expect(updatedConfig, equals(inArticleAdSlotConfigurationFixture));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = inArticleAdSlotConfigurationFixture.toJson();
        final result = InArticleAdSlotConfiguration.fromJson(json);
        expect(result, equals(inArticleAdSlotConfigurationFixture));
      });
    });
  });
}
