import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ContentSavedPayload', () {
    const payload = ContentSavedPayload(contentId: 'headline-123');

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {AnalyticsParameterKeys.contentId: 'headline-123'});
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = ContentSavedPayload(contentId: 'headline-123');
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = ContentSavedPayload(contentId: 'headline-456');
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.contentId]);
      });
    });
  });
}
