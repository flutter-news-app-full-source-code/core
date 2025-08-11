import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AdConfig', () {
    // Derive the test subject from the main remote config fixture.
    final adConfigFixture = remoteConfigsFixturesData.first.adConfig;

    group('constructor', () {
      test('returns correct instance', () {
        expect(adConfigFixture, isA<AdConfig>());
        expect(adConfigFixture.guestAdFrequency, isA<int>());
        expect(adConfigFixture.premiumAdFrequency, isA<int>());
      });
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = adConfigFixture.toJson();
        final result = AdConfig.fromJson(json);
        expect(result, equals(adConfigFixture));
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        final adConfig1 = adConfigFixture.copyWith();
        final adConfig2 = adConfigFixture.copyWith();
        expect(adConfig1, adConfig2);
      });

      test('instances with different properties are not equal', () {
        final adConfig1 = adConfigFixture.copyWith();
        final adConfig2 = adConfigFixture.copyWith(
          premiumUserArticlesToReadBeforeShowingInterstitialAds: 99,
        );
        expect(adConfig1, isNot(equals(adConfig2)));
      });

      test('props list contains all relevant fields', () {
        expect(adConfigFixture.props, [
          adConfigFixture.guestAdFrequency,
          adConfigFixture.guestAdPlacementInterval,
          adConfigFixture.authenticatedAdFrequency,
          adConfigFixture.authenticatedAdPlacementInterval,
          adConfigFixture.premiumAdFrequency,
          adConfigFixture.premiumAdPlacementInterval,
          adConfigFixture.guestArticlesToReadBeforeShowingInterstitialAds,
          adConfigFixture.standardUserArticlesToReadBeforeShowingInterstitialAds,
          adConfigFixture.premiumUserArticlesToReadBeforeShowingInterstitialAds,
        ]);
      });
    });
  });
}
