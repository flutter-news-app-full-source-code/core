import 'package:core/src/models/analytics/payloads/rewards_hub_viewed_payload.dart';
import 'package:test/test.dart';

void main() {
  group('RewardsHubViewedPayload', () {
    const payload = RewardsHubViewedPayload(referrer: 'settings');

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {'referrer': 'settings'});
      });

      test('should omit referrer if null', () {
        const payloadNull = RewardsHubViewedPayload();
        final map = payloadNull.toMap();
        expect(map, isEmpty);
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = RewardsHubViewedPayload(referrer: 'home');
        const instance2 = RewardsHubViewedPayload(referrer: 'home');
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = RewardsHubViewedPayload(referrer: 'profile');
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.referrer]);
      });
    });
  });
}
