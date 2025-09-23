import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedAdFrequencyConfig', () {
    // Access the FeedAdFrequencyConfig from the fixture's visibleTo map
    final feedAdFrequencyConfigFixture = remoteConfigsFixturesData
        .first
        .adConfig
        .feedAdConfiguration
        .visibleTo[AppUserRole.guestUser]!;

    test('can be instantiated', () {
      expect(feedAdFrequencyConfigFixture, isA<FeedAdFrequencyConfig>());
      expect(feedAdFrequencyConfigFixture.adFrequency, 5);
      expect(feedAdFrequencyConfigFixture.adPlacementInterval, 3);
    });

    test('supports value equality', () {
      final config1 = feedAdFrequencyConfigFixture.copyWith();
      final config2 = feedAdFrequencyConfigFixture.copyWith();
      expect(config1, equals(config2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedConfig = feedAdFrequencyConfigFixture.copyWith(
        adFrequency: 6,
        adPlacementInterval: 4,
      );

      expect(updatedConfig.adFrequency, 6);
      expect(updatedConfig.adPlacementInterval, 4);
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
