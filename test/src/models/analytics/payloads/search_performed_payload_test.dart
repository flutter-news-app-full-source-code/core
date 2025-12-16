import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('SearchPerformedPayload', () {
    const payload = SearchPerformedPayload(query: 'flutter', resultCount: 15);

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.searchQuery: 'flutter',
          AnalyticsParameterKeys.searchResultCount: 15,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = SearchPerformedPayload(
          query: 'flutter',
          resultCount: 15,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = SearchPerformedPayload(
          query: 'dart',
          resultCount: 15,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.query, payload.resultCount]);
      });
    });
  });
}
