import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('BrowserChoiceChangedPayload', () {
    const payload = BrowserChoiceChangedPayload(
      browserType: FeedItemClickBehavior.internalNavigation,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.browserType:
              FeedItemClickBehavior.internalNavigation.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = BrowserChoiceChangedPayload(
          browserType: FeedItemClickBehavior.internalNavigation,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = BrowserChoiceChangedPayload(
          browserType: FeedItemClickBehavior.externalNavigation,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.browserType]);
      });
    });
  });
}
