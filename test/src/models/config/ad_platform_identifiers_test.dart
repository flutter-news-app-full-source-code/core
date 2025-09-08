import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AdPlatformIdentifiers', () {
    final admobIdentifiersFixture = remoteConfigsFixturesData
        .first
        .adConfig
        .platformAdIdentifiers[AdPlatformType.admob]!;
    final localIdentifiersFixture = remoteConfigsFixturesData
        .first
        .adConfig
        .platformAdIdentifiers[AdPlatformType.local]!;

    test('can be instantiated (AdMob)', () {
      expect(admobIdentifiersFixture, isA<AdPlatformIdentifiers>());
      expect(
        admobIdentifiersFixture.feedNativeAdId,
        'ca-app-pub-3940256099942544/2247696110',
      );
      expect(
        admobIdentifiersFixture.feedToArticleInterstitialAdId,
        'ca-app-pub-3940256099942544/1033173712',
      );
    });

    test('can be instantiated (Local)', () {
      expect(localIdentifiersFixture, isA<AdPlatformIdentifiers>());
      expect(
        localIdentifiersFixture.feedNativeAdId,
        '1563c000a4a4e6e1a8e7f0f1',
      );
      expect(
        localIdentifiersFixture.feedToArticleInterstitialAdId,
        '3563c000a4a4e6e1a8e7f0f3',
      );
    });

    test('supports value equality', () {
      final identifiers1 = admobIdentifiersFixture.copyWith();
      final identifiers2 = admobIdentifiersFixture.copyWith();
      expect(identifiers1, equals(identifiers2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedIdentifiers = admobIdentifiersFixture.copyWith(
        feedNativeAdId: 'new_native_id',
        inArticleBannerAdId: 'new_banner_id',
      );

      expect(updatedIdentifiers.feedNativeAdId, 'new_native_id');
      expect(updatedIdentifiers.inArticleBannerAdId, 'new_banner_id');
      expect(updatedIdentifiers, isNot(equals(admobIdentifiersFixture)));
    });

    test('copyWith returns a new instance even if no changes', () {
      final updatedIdentifiers = admobIdentifiersFixture.copyWith();
      expect(
        updatedIdentifiers,
        equals(admobIdentifiersFixture),
      ); // Checks if values are the same
      expect(
        updatedIdentifiers,
        isNot(same(admobIdentifiersFixture)),
      ); // Checks if it's a new object in memory
    });

    group('fromJson/toJson', () {
      test('round trip (AdMob)', () {
        final json = admobIdentifiersFixture.toJson();
        final result = AdPlatformIdentifiers.fromJson(json);
        expect(result, equals(admobIdentifiersFixture));
      });

      test('round trip (Local)', () {
        final json = localIdentifiersFixture.toJson();
        final result = AdPlatformIdentifiers.fromJson(json);
        expect(result, equals(localIdentifiersFixture));
      });
    });
  });
}
