import 'package:core/core.dart';
import 'package:test/test.dart';


void main() {
  group('AdClickedPayload', () {
    const payload = AdClickedPayload(
      adProvider: AdPlatformType.admob,
      adType: AdType.native,
      adPlacement: 'feed',
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.adProvider: 'admob',
          AnalyticsParameterKeys.adType: 'native',
          AnalyticsParameterKeys.adPlacement: 'feed',
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = AdClickedPayload(
          adProvider: AdPlatformType.demo,
          adType: AdType.banner,
          adPlacement: 'bottom',
        );
        const instance2 = AdClickedPayload(
          adProvider: AdPlatformType.demo,
          adType: AdType.banner,
          adPlacement: 'bottom',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = AdClickedPayload(
          adProvider: AdPlatformType.demo,
          adType: AdType.native,
          adPlacement: 'feed',
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [
          payload.adProvider,
          payload.adType,
          payload.adPlacement,
        ]);
      });
    });
  });
}
