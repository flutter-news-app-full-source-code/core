import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ContentSharedPayload', () {
    const payload = ContentSharedPayload(
      contentId: 'headline-123',
      contentType: 'headline',
      shareMedium: 'whatsapp',
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.contentId: 'headline-123',
          AnalyticsParameterKeys.contentType: 'headline',
          AnalyticsParameterKeys.shareMedium: 'whatsapp',
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = ContentSharedPayload(
          contentId: 'headline-123',
          contentType: 'headline',
          shareMedium: 'whatsapp',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = ContentSharedPayload(
          contentId: 'headline-456',
          contentType: 'topic',
          shareMedium: 'twitter',
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [
          payload.contentId,
          payload.contentType,
          payload.shareMedium,
        ]);
      });
    });
  });
}
