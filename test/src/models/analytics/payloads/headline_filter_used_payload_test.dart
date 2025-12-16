import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('HeadlineFilterUsedPayload', () {
    const criteriaSummary = HeadlineFilterCriteriaSummary(
      criteriaTypes: ['topic', 'source'],
      topicCount: 2,
      sourceCount: 1,
      countryCount: 0,
    );

    const payload = HeadlineFilterUsedPayload(
      filterId: 'filter-123',
      criteriaSummary: criteriaSummary,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.filterId: 'filter-123',
          AnalyticsParameterKeys.criteriaSummary: criteriaSummary.toJson(),
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = HeadlineFilterUsedPayload(
          filterId: 'filter-123',
          criteriaSummary: criteriaSummary,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = HeadlineFilterUsedPayload(
          filterId: 'filter-456',
          criteriaSummary: criteriaSummary,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.filterId, payload.criteriaSummary]);
      });
    });
  });
}
