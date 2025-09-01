import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('LocalAd', () {
    final mockLocalNativeAd =
        localAdsFixturesData.firstWhere((ad) => ad.adType == 'native')
            as LocalNativeAd;
    final mockLocalBannerAd =
        localAdsFixturesData.firstWhere((ad) => ad.adType == 'banner')
            as LocalBannerAd;
    final mockLocalInterstitialAd =
        localAdsFixturesData.firstWhere((ad) => ad.adType == 'interstitial')
            as LocalInterstitialAd;
    final mockLocalVideoAd =
        localAdsFixturesData.firstWhere((ad) => ad.adType == 'video')
            as LocalVideoAd;

    group('fromJson', () {
      test('dispatches to LocalNativeAd.fromJson', () {
        final json = mockLocalNativeAd.toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalNativeAd>());
        expect(localAd, equals(mockLocalNativeAd));
      });

      test('dispatches to LocalBannerAd.fromJson', () {
        final json = mockLocalBannerAd.toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalBannerAd>());
        expect(localAd, equals(mockLocalBannerAd));
      });

      test('dispatches to LocalInterstitialAd.fromJson', () {
        final json = mockLocalInterstitialAd.toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalInterstitialAd>());
        expect(localAd, equals(mockLocalInterstitialAd));
      });

      test('dispatches to LocalVideoAd.fromJson', () {
        final json = mockLocalVideoAd.toJson();
        final localAd = LocalAd.fromJson(json);
        expect(localAd, isA<LocalVideoAd>());
        expect(localAd, equals(mockLocalVideoAd));
      });

      test('throws FormatException if adType is missing', () {
        final json = <String, dynamic>{'id': 'some-id'};
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
        final json = <String, dynamic>{'adType': 'unknown_ad_type'};
        expect(
          () => LocalAd.fromJson(json),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Unknown LocalAd type: unknown_ad_type',
            ),
          ),
        );
      });
    });

    group('toJson', () {
      test('serializes LocalNativeAd correctly', () {
        final json = mockLocalNativeAd.toJson();
        final deserialized = LocalAd.fromJson(json) as LocalNativeAd;
        expect(LocalAd.toJson(deserialized), equals(json));
      });

      test('serializes LocalBannerAd correctly', () {
        final json = mockLocalBannerAd.toJson();
        final deserialized = LocalAd.fromJson(json) as LocalBannerAd;
        expect(LocalAd.toJson(deserialized), equals(json));
      });

      test('serializes LocalInterstitialAd correctly', () {
        final json = mockLocalInterstitialAd.toJson();
        final deserialized = LocalAd.fromJson(json) as LocalInterstitialAd;
        expect(LocalAd.toJson(deserialized), equals(json));
      });

      test('serializes LocalVideoAd correctly', () {
        final json = mockLocalVideoAd.toJson();
        final deserialized = LocalAd.fromJson(json) as LocalVideoAd;
        expect(LocalAd.toJson(deserialized), equals(json));
      });

      test('throws FormatException if adType is unknown for toJson', () {
        // Create a mock LocalAd with an unknown adType for testing toJson
        const unknownLocalAd = _UnknownLocalAd(
          id: 'unknown-id',
          adType: 'unknown_ad_type',
        );
        expect(
          () => LocalAd.toJson(unknownLocalAd),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              'Unknown LocalAd type for toJson: unknown_ad_type',
            ),
          ),
        );
      });
    });
  });
}

// Helper class to simulate an unknown LocalAd type for testing toJson error
class _UnknownLocalAd extends LocalAd {
  const _UnknownLocalAd({required super.adType, required this.id});

  @override
  final String id;

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [...super.props, id];
}
