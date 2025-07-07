import 'package:ht_shared/src/models/remote_config/ad_config.dart';
import 'package:test/test.dart';

void main() {
  group('AdConfig', () {
    const testGuestAdFrequency = 5;
    const testGuestAdPlacementInterval = 10;
    const testAuthenticatedAdFrequency = 15;
    const testAuthenticatedAdPlacementInterval = 20;
    const testPremiumAdFrequency = 25;
    const testPremiumAdPlacementInterval = 30;
    const testGuestArticlesToRead = 3;
    const testStandardUserArticlesToRead = 4;
    const testPremiumUserArticlesToRead = 5;

    const adConfig = AdConfig(
      guestAdFrequency: testGuestAdFrequency,
      guestAdPlacementInterval: testGuestAdPlacementInterval,
      authenticatedAdFrequency: testAuthenticatedAdFrequency,
      authenticatedAdPlacementInterval: testAuthenticatedAdPlacementInterval,
      premiumAdFrequency: testPremiumAdFrequency,
      premiumAdPlacementInterval: testPremiumAdPlacementInterval,
      guestArticlesToReadBeforeShowingInterstitialAds: testGuestArticlesToRead,
      standardUserArticlesToReadBeforeShowingInterstitialAds:
          testStandardUserArticlesToRead,
      premiumUserArticlesToReadBeforeShowingInterstitialAds:
          testPremiumUserArticlesToRead,
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(adConfig, isA<AdConfig>());
        expect(adConfig.guestAdFrequency, testGuestAdFrequency);
        expect(adConfig.guestAdPlacementInterval, testGuestAdPlacementInterval);
        expect(adConfig.authenticatedAdFrequency, testAuthenticatedAdFrequency);
        expect(
          adConfig.authenticatedAdPlacementInterval,
          testAuthenticatedAdPlacementInterval,
        );
        expect(adConfig.premiumAdFrequency, testPremiumAdFrequency);
        expect(
          adConfig.premiumAdPlacementInterval,
          testPremiumAdPlacementInterval,
        );
        expect(
          adConfig.guestArticlesToReadBeforeShowingInterstitialAds,
          testGuestArticlesToRead,
        );
        expect(
          adConfig.standardUserArticlesToReadBeforeShowingInterstitialAds,
          testStandardUserArticlesToRead,
        );
        expect(
          adConfig.premiumUserArticlesToReadBeforeShowingInterstitialAds,
          testPremiumUserArticlesToRead,
        );
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = <String, dynamic>{
          'guest_ad_frequency': testGuestAdFrequency,
          'guest_ad_placement_interval': testGuestAdPlacementInterval,
          'authenticated_ad_frequency': testAuthenticatedAdFrequency,
          'authenticated_ad_placement_interval':
              testAuthenticatedAdPlacementInterval,
          'premium_ad_frequency': testPremiumAdFrequency,
          'premium_ad_placement_interval': testPremiumAdPlacementInterval,
          'guest_articles_to_read_before_showing_interstitial_ads':
              testGuestArticlesToRead,
          'standard_user_articles_to_read_before_showing_interstitial_ads':
              testStandardUserArticlesToRead,
          'premium_user_articles_to_read_before_showing_interstitial_ads':
              testPremiumUserArticlesToRead,
        };
        final result = AdConfig.fromJson(json);
        expect(result, equals(adConfig));
      });

      test('returns correct instance from JSON with all fields', () {
        final json = <String, dynamic>{
          'guest_ad_frequency': testGuestAdFrequency,
          'guest_ad_placement_interval': testGuestAdPlacementInterval,
          'authenticated_ad_frequency': testAuthenticatedAdFrequency,
          'authenticated_ad_placement_interval':
              testAuthenticatedAdPlacementInterval,
          'premium_ad_frequency': testPremiumAdFrequency,
          'premium_ad_placement_interval': testPremiumAdPlacementInterval,
          'guest_articles_to_read_before_showing_interstitial_ads':
              testGuestArticlesToRead,
          'standard_user_articles_to_read_before_showing_interstitial_ads':
              testStandardUserArticlesToRead,
          'premium_user_articles_to_read_before_showing_interstitial_ads':
              testPremiumUserArticlesToRead,
        };
        final result = AdConfig.fromJson(json);
        expect(result, equals(adConfig));
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = adConfig.toJson();
        expect(json, <String, dynamic>{
          'guest_ad_frequency': testGuestAdFrequency,
          'guest_ad_placement_interval': testGuestAdPlacementInterval,
          'authenticated_ad_frequency': testAuthenticatedAdFrequency,
          'authenticated_ad_placement_interval':
              testAuthenticatedAdPlacementInterval,
          'premium_ad_frequency': testPremiumAdFrequency,
          'premium_ad_placement_interval': testPremiumAdPlacementInterval,
          'guest_articles_to_read_before_showing_interstitial_ads':
              testGuestArticlesToRead,
          'standard_user_articles_to_read_before_showing_interstitial_ads':
              testStandardUserArticlesToRead,
          'premium_user_articles_to_read_before_showing_interstitial_ads':
              testPremiumUserArticlesToRead,
        });
      });
    });

    group('Equatable', () {
      test('instances with same properties are equal', () {
        const adConfig1 = AdConfig(
          guestAdFrequency: 1,
          guestAdPlacementInterval: 2,
          authenticatedAdFrequency: 3,
          authenticatedAdPlacementInterval: 4,
          premiumAdFrequency: 5,
          premiumAdPlacementInterval: 6,
          guestArticlesToReadBeforeShowingInterstitialAds: 7,
          standardUserArticlesToReadBeforeShowingInterstitialAds: 8,
          premiumUserArticlesToReadBeforeShowingInterstitialAds: 9,
        );
        const adConfig2 = AdConfig(
          guestAdFrequency: 1,
          guestAdPlacementInterval: 2,
          authenticatedAdFrequency: 3,
          authenticatedAdPlacementInterval: 4,
          premiumAdFrequency: 5,
          premiumAdPlacementInterval: 6,
          guestArticlesToReadBeforeShowingInterstitialAds: 7,
          standardUserArticlesToReadBeforeShowingInterstitialAds: 8,
          premiumUserArticlesToReadBeforeShowingInterstitialAds: 9,
        );
        expect(adConfig1, adConfig2);
      });

      test('instances with different properties are not equal', () {
        const adConfig1 = AdConfig(
          guestAdFrequency: 1,
          guestAdPlacementInterval: 2,
          authenticatedAdFrequency: 3,
          authenticatedAdPlacementInterval: 4,
          premiumAdFrequency: 5,
          premiumAdPlacementInterval: 6,
          guestArticlesToReadBeforeShowingInterstitialAds: 7,
          standardUserArticlesToReadBeforeShowingInterstitialAds: 8,
          premiumUserArticlesToReadBeforeShowingInterstitialAds: 9,
        );
        const adConfig2 = AdConfig(
          guestAdFrequency: 1,
          guestAdPlacementInterval: 2,
          authenticatedAdFrequency: 3,
          authenticatedAdPlacementInterval: 4,
          premiumAdFrequency: 5,
          premiumAdPlacementInterval: 6,
          guestArticlesToReadBeforeShowingInterstitialAds: 7,
          standardUserArticlesToReadBeforeShowingInterstitialAds: 8,
          premiumUserArticlesToReadBeforeShowingInterstitialAds:
              99, // Different
        );
        expect(adConfig1, isNot(equals(adConfig2)));
      });

      test('props list contains all relevant fields', () {
        expect(adConfig.props, [
          testGuestAdFrequency,
          testGuestAdPlacementInterval,
          testAuthenticatedAdFrequency,
          testAuthenticatedAdPlacementInterval,
          testPremiumAdFrequency,
          testPremiumAdPlacementInterval,
          testGuestArticlesToRead,
          testStandardUserArticlesToRead,
          testPremiumUserArticlesToRead,
        ]);
      });
    });
  });
}
