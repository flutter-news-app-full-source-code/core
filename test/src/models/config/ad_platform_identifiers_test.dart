import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AdPlatformIdentifiers', () {
    final admobIdentifiersFixture = remoteConfigsFixturesData
        .first
        .features
        .ads
        .platformAdIdentifiers[AdPlatformType.admob]!;

    test('can be instantiated (AdMob)', () {
      expect(admobIdentifiersFixture, isA<AdPlatformIdentifiers>());
      expect(
        admobIdentifiersFixture.androidNativeAdId,
        'ca-app-pub-3940256099942544/2247696110',
      );
      expect(
        admobIdentifiersFixture.androidInterstitialAdId,
        'ca-app-pub-3940256099942544/1033173712',
      );
    });

    test('supports value equality', () {
      final identifiers1 = admobIdentifiersFixture.copyWith();
      final identifiers2 = admobIdentifiersFixture.copyWith();
      expect(identifiers1, equals(identifiers2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedIdentifiers = admobIdentifiersFixture.copyWith(
        androidNativeAdId: 'new_native_id',
        androidInterstitialAdId: 'new_interstitial_id',
      );

      expect(updatedIdentifiers.androidNativeAdId, 'new_native_id');
      expect(updatedIdentifiers.androidInterstitialAdId, 'new_interstitial_id');
      expect(updatedIdentifiers, isNot(equals(admobIdentifiersFixture)));
    });

    test('copyWith returns a new instance even if no changes', () {
      final updatedIdentifiers = admobIdentifiersFixture.copyWith();
      expect(updatedIdentifiers, equals(admobIdentifiersFixture));
      expect(updatedIdentifiers, isNot(same(admobIdentifiersFixture)));
    });

    group('fromJson/toJson', () {
      test('round trip (AdMob)', () {
        final json = admobIdentifiersFixture.toJson();
        final result = AdPlatformIdentifiers.fromJson(json);
        expect(result, equals(admobIdentifiersFixture));
      });
    });
  });
}
