import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ContentViewedPayload', () {
    const payload = ContentViewedPayload(
      contentId: 'headline-123',
      contentType: ContentType.headline,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.contentId: 'headline-123',
          AnalyticsParameterKeys.contentType: ContentType.headline.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = ContentViewedPayload(
          contentId: 'headline-123',
          contentType: ContentType.headline,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = ContentViewedPayload(
          contentId: 'headline-456',
          contentType: ContentType.topic,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.contentId, payload.contentType]);
      });
    });
  });
}
