import 'package:core/core.dart';
import 'package:core/src/models/analytics/payloads/reward_granted_payload.dart';
import 'package:test/test.dart';

void main() {
  group('RewardGrantedPayload', () {
    const payload = RewardGrantedPayload(
      rewardType: RewardType.adFree,
      durationDays: 7,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.rewardType: 'adFree',
          AnalyticsParameterKeys.durationDays: 7,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = RewardGrantedPayload(
          rewardType: RewardType.dailyDigest,
          durationDays: 1,
        );
        const instance2 = RewardGrantedPayload(
          rewardType: RewardType.dailyDigest,
          durationDays: 1,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = RewardGrantedPayload(
          rewardType: RewardType.adFree,
          durationDays: 30,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.rewardType, payload.durationDays]);
      });
    });
  });
}
