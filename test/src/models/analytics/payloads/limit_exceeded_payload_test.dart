import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('LimitExceededPayload', () {
    const payload = LimitExceededPayload(limitType: LimitedAction.saveFilter);

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.limitType: LimitedAction.saveFilter.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = LimitExceededPayload(
          limitType: LimitedAction.saveFilter,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = LimitExceededPayload(
          limitType: LimitedAction.followTopic,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.limitType]);
      });
    });
  });
}
