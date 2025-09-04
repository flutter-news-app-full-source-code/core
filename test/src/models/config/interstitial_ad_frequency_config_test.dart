import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InterstitialAdFrequencyConfig', () {
    final frequencyConfigFixture = remoteConfigsFixturesData
        .first
        .adConfig
        .interstitialAdConfiguration
        .feedInterstitialAdFrequencyConfig;

    group('constructor', () {
      test('returns correct instance', () {
        expect(frequencyConfigFixture, isA<InterstitialAdFrequencyConfig>());
        expect(
          frequencyConfigFixture.guestTransitionsBeforeShowingInterstitialAds,
          isA<int>(),
        );
        expect(
          frequencyConfigFixture
              .standardUserTransitionsBeforeShowingInterstitialAds,
          isA<int>(),
        );
        expect(
          frequencyConfigFixture
              .premiumUserTransitionsBeforeShowingInterstitialAds,
          isA<int>(),
        );
      });
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = frequencyConfigFixture.toJson();
        final result = InterstitialAdFrequencyConfig.fromJson(json);
        expect(result, frequencyConfigFixture);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final updatedConfig = frequencyConfigFixture.copyWith(
          guestTransitionsBeforeShowingInterstitialAds: 7,
        );

        expect(updatedConfig.guestTransitionsBeforeShowingInterstitialAds, 7);
        expect(updatedConfig, isNot(equals(frequencyConfigFixture)));
      });

      test('returns the same instance if no changes are made', () {
        final updatedConfig = frequencyConfigFixture.copyWith();
        expect(updatedConfig, equals(frequencyConfigFixture));
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final config1 = frequencyConfigFixture.copyWith();
        final config2 = frequencyConfigFixture.copyWith();
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        final config1 = frequencyConfigFixture.copyWith();
        final config2 = frequencyConfigFixture.copyWith(
          guestTransitionsBeforeShowingInterstitialAds: 100,
        );
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
