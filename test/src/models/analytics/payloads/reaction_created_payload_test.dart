import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ReactionCreatedPayload', () {
    const payload = ReactionCreatedPayload(
      contentId: 'headline-123',
      reactionType: ReactionType.like,
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          AnalyticsParameterKeys.contentId: 'headline-123',
          AnalyticsParameterKeys.reactionType: ReactionType.like.name,
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = ReactionCreatedPayload(
          contentId: 'headline-123',
          reactionType: ReactionType.like,
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = ReactionCreatedPayload(
          contentId: 'headline-456',
          reactionType: ReactionType.insightful,
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [payload.contentId, payload.reactionType]);
      });
    });
  });
}
