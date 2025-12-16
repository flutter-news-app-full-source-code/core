import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SourceFilterUsedPayload', () {
    final criteria = getSavedSourceFiltersFixturesData().first.criteria;
    final criteriaSummary = SourceFilterCriteriaSummary.fromCriteria(criteria);

    final payload = SourceFilterUsedPayload(
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
        final instance1 = payload;
        final instance2 = SourceFilterUsedPayload(
          filterId: 'filter-123',
          criteriaSummary: criteriaSummary,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        final instance1 = payload;
        final instance2 = SourceFilterUsedPayload(
          filterId: 'filter-456',
          criteriaSummary: criteriaSummary,
        );
        expect(instance1, isNot(equals(instance2)));
      });
    });
  });
}
