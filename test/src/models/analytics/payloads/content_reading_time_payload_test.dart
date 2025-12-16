import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ContentReadingTimePayload', () {
    const payload = ContentReadingTimePayload(
      contentId: 'headline-123',
      durationInSeconds: 120,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.contentId: 'headline-123',
          AnalyticsParameterKeys.durationInSeconds: 120,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = ContentReadingTimePayload(
          contentId: 'headline-123',
          durationInSeconds: 120,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = ContentReadingTimePayload(
          contentId: 'headline-456',
          durationInSeconds: 120,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.contentId, payload.durationInSeconds]);
      });
    });
  });
}
