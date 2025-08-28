import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('LocalAd', () {
    final localAdFixture = remoteConfigsFixturesData
        .first.adConfig.localAdsCatalog['local_feed_native_ad_id']!;

    test('can be instantiated', () {
      expect(localAdFixture, isA<LocalAd>());
      expect(localAdFixture.id, 'local_feed_native_ad_id');
      expect(localAdFixture.title, 'Local Native Ad Title');
      expect(localAdFixture.subtitle, 'This is a local native ad description.');
      expect(localAdFixture.imageUrl, 'https://example.com/local_native_ad.png');
      expect(localAdFixture.targetUrl, 'https://example.com/local_native_ad_target');
      expect(localAdFixture.adType, AdType.native);
    });

    test('supports value equality', () {
      final localAd1 = localAdFixture.copyWith();
      final localAd2 = localAdFixture.copyWith();
      expect(localAd1, equals(localAd2));
    });

    test('copyWith returns a new instance with updated values', () {
      final updatedLocalAd = localAdFixture.copyWith(
        title: 'Updated Title',
        adType: AdType.banner,
      );

      expect(updatedLocalAd.title, 'Updated Title');
      expect(updatedLocalAd.adType, AdType.banner);
      expect(updatedLocalAd, isNot(equals(localAdFixture)));
    });

    test('copyWith returns same instance if no changes', () {
      final updatedLocalAd = localAdFixture.copyWith();
      expect(updatedLocalAd, equals(localAdFixture));
    });

    group('fromJson/toJson', () {
      test('round trip', () {
        final json = localAdFixture.toJson();
        final result = LocalAd.fromJson(json);
        expect(result, equals(localAdFixture));
      });
    });
  });
}
