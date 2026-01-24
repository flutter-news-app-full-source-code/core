import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AdRewardEarnedPayload', () {
    const payload = AdRewardEarnedPayload(
      adProvider: AdPlatformType.admob,
      adType: AdType.rewarded,
      adPlacement: 'rewarded',
      rewardType: RewardType.adFree,
      rewardAmount: 1,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.adProvider: 'admob',
          AnalyticsParameterKeys.adType: 'rewarded',
          AnalyticsParameterKeys.adPlacement: 'rewarded',
          AnalyticsParameterKeys.rewardType: 'adFree',
          AnalyticsParameterKeys.rewardAmount: 1,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = AdRewardEarnedPayload(
          adProvider: AdPlatformType.admob,
          adType: AdType.rewarded,
          adPlacement: 'rewarded',
          rewardType: RewardType.adFree,
          rewardAmount: 1,
        );
        expect(instance1, equals(instance2));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [
          payload.adProvider,
          payload.adType,
          payload.adPlacement,
          payload.rewardType,
          payload.rewardAmount,
        ]);
      });
    });
  });
}
