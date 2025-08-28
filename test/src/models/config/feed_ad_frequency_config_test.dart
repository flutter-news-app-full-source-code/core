import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedAdFrequencyConfig', () {
    final feedAdFrequencyConfigFixture = remoteConfigsFixturesData
        .first
        .adConfig
        .feedAdConfiguration
        .frequencyConfig;

    test('can be instantiated', () {
      expect(feedAdFrequencyConfigFixture, isA<FeedAdFrequencyConfig>());
      expect(feedAdFrequencyConfigFixture.guestAdFrequency, 5);
      expect(feedAdFrequencyConfigFixture.authenticatedAdPlacementInterval, 5);
      expect(feedAdFrequencyConfigFixture.premiumAdFrequency, 0);
    });

    test('supports value equality', () {
      final config1 = feedAdFrequencyConfigFixture.copyWith();
      final config2 = feedAdFrequencyConfigFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = feedAdFrequencyConfigFixture.copyWith(
        guestAdFrequency: 6,
        authenticatedAdFrequency: 11,
      );

      expect(updatedConfig.guestAdFrequency, 6);
      expect(updatedConfig.authenticatedAdFrequency, 11);
      expect(updatedConfig, isNot(equals(feedAdFrequencyConfigFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedConfig = feedAdFrequencyConfigFixture.copyWith();
      expect(updatedConfig, equals(feedAdFrequencyConfigFixture));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = feedAdFrequencyConfigFixture.toJson();
        final result = FeedAdFrequencyConfig.fromJson(json);
        expect(result, equals(feedAdFrequencyConfigFixture));
      });
    });
  });
}
