import 'package:ht_shared/src/models/remote-config/ad_config.dart';
import 'package:test/test.dart';

void main() {
  group('AdConfig', () {
    const testGuestAdFrequency = 5;
    const testGuestAdPlacementInterval = 10;
    const testAuthenticatedAdFrequency = 15;
    const testAuthenticatedAdPlacementInterval = 20;
    const testPremiumAdFrequency = 25;
    const testPremiumAdPlacementInterval = 30;

    const adConfig = AdConfig(
      guestAdFrequency: testGuestAdFrequency,
      guestAdPlacementInterval: testGuestAdPlacementInterval,
      authenticatedAdFrequency: testAuthenticatedAdFrequency,
      authenticatedAdPlacementInterval: testAuthenticatedAdPlacementInterval,
      premiumAdFrequency: testPremiumAdFrequency,
      premiumAdPlacementInterval: testPremiumAdPlacementInterval,
    );

    group('constructor', () {
      test('returns correct instance', () {
        expect(adConfig, isA<AdConfig>());
        expect(adConfig.guestAdFrequency, testGuestAdFrequency);
        expect(adConfig.guestAdPlacementInterval, testGuestAdPlacementInterval);
        expect(adConfig.authenticatedAdFrequency, testAuthenticatedAdFrequency);
        expect(adConfig.authenticatedAdPlacementInterval,
            testAuthenticatedAdPlacementInterval,);
        expect(adConfig.premiumAdFrequency, testPremiumAdFrequency);
        expect(adConfig.premiumAdPlacementInterval,
            testPremiumAdPlacementInterval,);
      });
    });

    group('fromJson', () {
      test('returns correct instance from JSON', () {
        final json = <String, dynamic>{
          'guestAdFrequency': testGuestAdFrequency,
          'guestAdPlacementInterval': testGuestAdPlacementInterval,
          'authenticatedAdFrequency': testAuthenticatedAdFrequency,
          'authenticatedAdPlacementInterval':
              testAuthenticatedAdPlacementInterval,
          'premiumAdFrequency': testPremiumAdFrequency,
          'premiumAdPlacementInterval': testPremiumAdPlacementInterval,
        };
        final result = AdConfig.fromJson(json);
        expect(result, equals(adConfig));
      });
    });

    group('toJson', () {
      test('returns correct JSON map', () {
        final json = adConfig.toJson();
        expect(json, <String, dynamic>{
          'guestAdFrequency': testGuestAdFrequency,
          'guestAdPlacementInterval': testGuestAdPlacementInterval,
          'authenticatedAdFrequency': testAuthenticatedAdFrequency,
          'authenticatedAdPlacementInterval':
              testAuthenticatedAdPlacementInterval,
          'premiumAdFrequency': testPremiumAdFrequency,
          'premiumAdPlacementInterval': testPremiumAdPlacementInterval,
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
        );
        const adConfig2 = AdConfig(
          guestAdFrequency: 1,
          guestAdPlacementInterval: 2,
          authenticatedAdFrequency: 3,
          authenticatedAdPlacementInterval: 4,
          premiumAdFrequency: 5,
          premiumAdPlacementInterval: 6,
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
        );
        const adConfig2 = AdConfig(
          guestAdFrequency: 10, // Different
          guestAdPlacementInterval: 2,
          authenticatedAdFrequency: 3,
          authenticatedAdPlacementInterval: 4,
          premiumAdFrequency: 5,
          premiumAdPlacementInterval: 6,
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
        ]);
      });
    });
  });
}
