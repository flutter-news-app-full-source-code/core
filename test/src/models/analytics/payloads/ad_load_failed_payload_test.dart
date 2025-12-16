import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AdLoadFailedPayload', () {
    const payload = AdLoadFailedPayload(
      adProvider: AdPlatformType.admob,
      adType: AdType.interstitial,
      errorCode: 1,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.adProvider: 'admob',
          AnalyticsParameterKeys.adType: 'interstitial',
          AnalyticsParameterKeys.errorCode: 1,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = AdLoadFailedPayload(
          adProvider: AdPlatformType.demo,
          adType: AdType.banner,
          errorCode: 404,
        );
        const instance2 = AdLoadFailedPayload(
          adProvider: AdPlatformType.demo,
          adType: AdType.banner,
          errorCode: 404,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = AdLoadFailedPayload(
          adProvider: AdPlatformType.demo,
          adType: AdType.interstitial,
          errorCode: 2,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [
          payload.adProvider,
          payload.adType,
          payload.errorCode,
        ]);
      });
    });
  });
}
