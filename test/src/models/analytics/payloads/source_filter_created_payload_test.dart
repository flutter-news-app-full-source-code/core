import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SourceFilterCreatedPayload', () {
    final criteria = getSavedSourceFiltersFixturesData().first.criteria;
    final criteriaSummary = SourceFilterCriteriaSummary.fromCriteria(criteria);

    final payload = SourceFilterCreatedPayload(
      filterId: 'filter-123',
      criteriaSummary: criteriaSummary,
      isPinned: true,
    );

    final payloadWithLimits = SourceFilterCreatedPayload(
      filterId: 'filter-456',
      criteriaSummary: criteriaSummary,
      isPinned: false,
      wasPinningLimited: true,
    );

    group('toMap', () {
      test('should correctly serialize a standard payload to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.filterId: 'filter-123',
          AnalyticsParameterKeys.isPinned: true,
          AnalyticsParameterKeys.criteriaSummary: criteriaSummary.toJson(),
        });
      });

      test('should correctly serialize a payload with limits to a map', () {
        final map = payloadWithLimits.toMap();
        expect(map, {
          AnalyticsParameterKeys.filterId: 'filter-456',
          AnalyticsParameterKeys.isPinned: false,
          AnalyticsParameterKeys.criteriaSummary: criteriaSummary.toJson(),
          'wasPinningLimited': true,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final instance1 = payload;
        final instance2 = SourceFilterCreatedPayload(
          filterId: 'filter-123',
          criteriaSummary: criteriaSummary,
          isPinned: true,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        expect(payload, isNot(equals(payloadWithLimits)));
      });
    });
  });
}
