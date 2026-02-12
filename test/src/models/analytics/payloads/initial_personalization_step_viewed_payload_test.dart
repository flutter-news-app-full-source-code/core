import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('InitialPersonalizationStepViewedPayload', () {
    const payload = InitialPersonalizationStepViewedPayload(stepName: 'topics');

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {AnalyticsParameterKeys.stepName: 'topics'});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = InitialPersonalizationStepViewedPayload(
          stepName: 'topics',
        );
        const instance2 = InitialPersonalizationStepViewedPayload(
          stepName: 'topics',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = InitialPersonalizationStepViewedPayload(
          stepName: 'topics',
        );
        const instance2 = InitialPersonalizationStepViewedPayload(
          stepName: 'sources',
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, ['topics']);
      });
    });
  });
}
