import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('FeedDensityChangedPayload', () {
    const payload = FeedDensityChangedPayload(density: FeedItemDensity.compact);

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.density: FeedItemDensity.compact.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = FeedDensityChangedPayload(
          density: FeedItemDensity.compact,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = FeedDensityChangedPayload(
          density: FeedItemDensity.comfortable,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.density]);
      });
    });
  });
}
