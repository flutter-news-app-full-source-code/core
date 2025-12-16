import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SourceFilterUpdatedPayload', () {
    final criteria = getSavedSourceFiltersFixturesData().first.criteria;
    final criteriaSummary = SourceFilterCriteriaSummary.fromCriteria(criteria);

    final payload = SourceFilterUpdatedPayload(
      filterId: 'filter-123',
      newName: 'New Filter Name',
      pinStatusChangedTo: true,
      newCriteriaSummary: criteriaSummary,
    );

    group('Constructor', () {
      test('should throw assertion error if no changes are provided', () {
        expect(
          () => SourceFilterUpdatedPayload(filterId: 'filter-123'),
          throwsA(isA<AssertionError>()),
        );
      });
    });

    group('toMap', () {
      test('should correctly serialize to a map with all fields', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.filterId: 'filter-123',
          'newName': 'New Filter Name',
          'pinStatusChangedTo': true,
          'newCriteriaSummary': criteriaSummary.toJson(),
        });
      });

      test('should correctly serialize to a map with only one change', () {
        const singleChangePayload = SourceFilterUpdatedPayload(
          filterId: 'filter-123',
          pinStatusChangedTo: false,
        );
        final map = singleChangePayload.toMap();
        expect(map, {
          AnalyticsParameterKeys.filterId: 'filter-123',
          'pinStatusChangedTo': false,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        final instance1 = payload;
        final instance2 = SourceFilterUpdatedPayload(
          filterId: 'filter-123',
          newName: 'New Filter Name',
          pinStatusChangedTo: true,
          newCriteriaSummary: criteriaSummary,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        final instance1 = payload;
        const instance2 = SourceFilterUpdatedPayload(
          filterId: 'filter-123',
          newName: 'Another Name',
        );
        expect(instance1, isNot(equals(instance2)));
      });
    });
  });
}
