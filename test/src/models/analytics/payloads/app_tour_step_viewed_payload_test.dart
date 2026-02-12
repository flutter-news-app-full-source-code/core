import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('AppTourStepViewedPayload', () {
    const payload = AppTourStepViewedPayload(stepIndex: 1);

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {AnalyticsParameterKeys.stepIndex: 1});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = AppTourStepViewedPayload(stepIndex: 1);
        const instance2 = AppTourStepViewedPayload(stepIndex: 1);
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = AppTourStepViewedPayload(stepIndex: 1);
        const instance2 = AppTourStepViewedPayload(stepIndex: 2);
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [1]);
      });
    });
  });
}
