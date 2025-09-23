import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InterstitialAdConfiguration', () {
    final interstitialAdConfigFixture =
        remoteConfigsFixturesData.first.adConfig.interstitialAdConfiguration;

    group('constructor', () {
      test('returns correct instance', () {
        expect(interstitialAdConfigFixture, isA<InterstitialAdConfiguration>());
        expect(interstitialAdConfigFixture.enabled, isA<bool>());
        expect(interstitialAdConfigFixture.adType, AdType.interstitial);
        expect(
          interstitialAdConfigFixture.visibleTo,
          isA<Map<AppUserRole, InterstitialAdFrequencyConfig>>(),
        );
      });
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = interstitialAdConfigFixture.toJson();
        final result = InterstitialAdConfiguration.fromJson(json);
        expect(result, interstitialAdConfigFixture);
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final updatedConfig = interstitialAdConfigFixture.copyWith(
          enabled: false,
          visibleTo: {
            AppUserRole.guestUser: const InterstitialAdFrequencyConfig(
              transitionsBeforeShowingInterstitialAds: 10,
            ),
          },
        );

        expect(updatedConfig.enabled, false);
        expect(
          updatedConfig.visibleTo[AppUserRole.guestUser]!
              .transitionsBeforeShowingInterstitialAds,
          10,
        );
        expect(updatedConfig, isNot(equals(interstitialAdConfigFixture)));
      });

      test('returns the same instance if no changes are made', () {
        final updatedConfig = interstitialAdConfigFixture.copyWith();
        expect(updatedConfig, equals(interstitialAdConfigFixture));
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final config1 = interstitialAdConfigFixture.copyWith();
        final config2 = interstitialAdConfigFixture.copyWith();
        expect(config1, config2);
      });

      test('instances with different properties are not equal', () {
        final config1 = interstitialAdConfigFixture.copyWith();
        final config2 = interstitialAdConfigFixture.copyWith(enabled: false);
        expect(config1, isNot(equals(config2)));
      });
    });
  });
}
