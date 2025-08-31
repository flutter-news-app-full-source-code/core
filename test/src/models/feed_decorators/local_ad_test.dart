import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('LocalAd (Abstract Class)', () {
    // Test that LocalAd.fromJson correctly dispatches to concrete types
    group('fromJson dispatching', () {
      test('dispatches to LocalNativeAd.fromJson', () {
        final json =
            (localAdsFixturesData.firstWhere((ad) => ad.adType == 'native')
                    as LocalNativeAd)
                .toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalNativeAd>());
        expect(localAd, equals(localAdsFixturesData[0]));
      });

      test('dispatches to LocalBannerAd.fromJson', () {
        final json =
            (localAdsFixturesData.firstWhere((ad) => ad.adType == 'banner')
                    as LocalBannerAd)
                .toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalBannerAd>());
        expect(localAd, equals(localAdsFixturesData[1]));
      });

      test('dispatches to LocalInterstitialAd.fromJson', () {
        final json =
            (localAdsFixturesData.firstWhere(
                      (ad) => ad.adType == 'interstitial',
                    )
                    as LocalInterstitialAd)
                .toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalInterstitialAd>());
        expect(localAd, equals(localAdsFixturesData[2]));
      });

      test('dispatches to LocalVideoAd.fromJson', () {
        final json =
            (localAdsFixturesData.firstWhere((ad) => ad.adType == 'video')
                    as LocalVideoAd)
                .toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalVideoAd>());
        expect(localAd, equals(localAdsFixturesData[3]));
      });

      test('throws FormatException if adType is missing', () {
        final json = <String, dynamic>{'id': 'some-id', 'type': 'localAd'};
        expect(
          () => LocalAd.fromJson(json),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Missing "adType" field in LocalAd JSON.',
            ),
          ),
        );
      });

      test('throws FormatException if adType is unknown', () {
        final json = <String, dynamic>{
          'id': 'some-id',
          'type': 'localAd',
          'adType': 'unknown_type',
        };
        expect(
          () => LocalAd.fromJson(json),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Unknown LocalAd type: unknown_type', // Corrected from LocalAds
            ),
          ),
        );
      });
    });

    group('toJson dispatching', () {
      test('serializes LocalNativeAd correctly via LocalAd.toJson', () {
        final mockLocalNativeAd =
            localAdsFixturesData.firstWhere((ad) => ad.adType == 'native')
                as LocalNativeAd;
        final json = mockLocalNativeAd.toJson();
        expect(LocalAd.toJson(mockLocalNativeAd), equals(json));
      });

      test('serializes LocalBannerAd correctly via LocalAd.toJson', () {
        final mockLocalBannerAd =
            localAdsFixturesData.firstWhere((ad) => ad.adType == 'banner')
                as LocalBannerAd;
        final json = mockLocalBannerAd.toJson();
        expect(LocalAd.toJson(mockLocalBannerAd), equals(json));
      });

      test('serializes LocalInterstitialAd correctly via LocalAd.toJson', () {
        final mockLocalInterstitialAd =
            localAdsFixturesData.firstWhere((ad) => ad.adType == 'interstitial')
                as LocalInterstitialAd;
        final json = mockLocalInterstitialAd.toJson();
        expect(LocalAd.toJson(mockLocalInterstitialAd), equals(json));
      });

      test('serializes LocalVideoAd correctly via LocalAd.toJson', () {
        final mockLocalVideoAd =
            localAdsFixturesData.firstWhere((ad) => ad.adType == 'video')
                as LocalVideoAd;
        final json = mockLocalVideoAd.toJson();
        expect(LocalAd.toJson(mockLocalVideoAd), equals(json));
      });

    });

    // Test props for a concrete LocalAd subclass (LocalNativeAd)
    // The test name is misleading as it tests a concrete instance's props.
    // The expectation is updated to reflect all properties of LocalNativeAd.
    test('props are correct for LocalNativeAd instance', () {
      final localAd =
          localAdsFixturesData.firstWhere((ad) => ad.adType == 'native')
              as LocalNativeAd;
      expect(localAd.props, [
        localAd.id,
        localAd.title,
        localAd.subtitle,
        localAd.imageUrl,
        localAd.targetUrl,
        localAd.adType,
        localAd.type,
      ]);
    });
  });

  group('LocalNativeAd (Concrete Subclass)', () {
    final mockLocalNativeAd =
        localAdsFixturesData.firstWhere((ad) => ad.adType == 'native')
            as LocalNativeAd;

    test('supports value equality', () {
      final item1 =
          localAdsFixturesData.firstWhere((ad) => ad.adType == 'native')
              as LocalNativeAd;
      expect(item1, equals(mockLocalNativeAd));
    });

    test('props are correct', () {
      expect(mockLocalNativeAd.props, [
        mockLocalNativeAd.id,
        mockLocalNativeAd.title,
        mockLocalNativeAd.subtitle,
        mockLocalNativeAd.imageUrl,
        mockLocalNativeAd.targetUrl,
        mockLocalNativeAd.adType,
        mockLocalNativeAd.type,
      ]);
    });

    group('copyWith', () {
      test('returns a new instance with updated fields', () {
        const newTitle = 'New Title';
        final updatedLocalAd = mockLocalNativeAd.copyWith(title: newTitle);

        expect(updatedLocalAd.id, mockLocalNativeAd.id);
        expect(updatedLocalAd.title, newTitle);
        expect(updatedLocalAd.subtitle, mockLocalNativeAd.subtitle);
        expect(updatedLocalAd.imageUrl, mockLocalNativeAd.imageUrl);
        expect(updatedLocalAd.targetUrl, mockLocalNativeAd.targetUrl);
        expect(updatedLocalAd.adType, mockLocalNativeAd.adType);
        expect(updatedLocalAd.type, mockLocalNativeAd.type);
      });

      test('returns an identical copy if no updates provided', () {
        final copiedLocalAd = mockLocalNativeAd.copyWith();
        expect(copiedLocalAd, mockLocalNativeAd);
        expect(identical(copiedLocalAd, mockLocalNativeAd), isFalse);
      });
    });

    group('JSON serialization', () {
      test('serializes full LocalNativeAd object to JSON', () {
        final json = mockLocalNativeAd.toJson();

        expect(json, <String, dynamic>{
          'id': mockLocalNativeAd.id,
          'title': mockLocalNativeAd.title,
          'subtitle': mockLocalNativeAd.subtitle,
          'imageUrl': mockLocalNativeAd.imageUrl,
          'targetUrl': mockLocalNativeAd.targetUrl,
          'adType': 'native',
          'type': 'localAd',
        });
      });

      test('deserializes full JSON to LocalNativeAd object', () {
        final json = <String, dynamic>{
          'id': mockLocalNativeAd.id,
          'title': mockLocalNativeAd.title,
          'subtitle': mockLocalNativeAd.subtitle,
          'imageUrl': mockLocalNativeAd.imageUrl,
          'targetUrl': mockLocalNativeAd.targetUrl,
          'adType': 'native',
          'type': 'localAd',
        };
        final localAd = LocalNativeAd.fromJson(json);

        expect(localAd, equals(mockLocalNativeAd));
      });
    });
  });
}
