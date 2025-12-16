import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AdRewardEarnedPayload', () {
    const payload = AdRewardEarnedPayload(
      adProvider: AdPlatformType.admob,
      adType: AdType.video,
      adPlacement: 'rewarded',
      rewardAmount: 10,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.adProvider: 'admob',
          AnalyticsParameterKeys.adType: 'video',
          AnalyticsParameterKeys.adPlacement: 'rewarded',
          AnalyticsParameterKeys.rewardAmount: 10,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = AdRewardEarnedPayload(
          adProvider: AdPlatformType.admob,
          adType: AdType.video,
          adPlacement: 'rewarded',
          rewardAmount: 10,
        );
        expect(instance1, equals(instance2));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [
          payload.adProvider,
          payload.adType,
          payload.adPlacement,
          payload.rewardAmount,
        ]);
      });
    });
  });
}
