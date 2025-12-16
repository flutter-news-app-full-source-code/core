import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('ReportSubmittedPayload', () {
    const payload = ReportSubmittedPayload(
      entityType: ReportableEntity.headline,
      entityId: 'headline-123',
      reason: 'misinformationOrFakeNews',
    );

    group('toMap', () {
      test('should correctly serialize to a map', () {
        final map = payload.toMap();
        expect(map, {
          'entityType': ReportableEntity.headline.name,
          'entityId': 'headline-123',
          'reason': 'misinformationOrFakeNews',
        });
      });
    });

    group('Equatable', () {
      test('should equate two identical instances', () {
        const instance1 = payload;
        const instance2 = ReportSubmittedPayload(
          entityType: ReportableEntity.headline,
          entityId: 'headline-123',
          reason: 'misinformationOrFakeNews',
        );
        expect(instance1, equals(instance2));
      });

      test('should not equate instances with different properties', () {
        const instance1 = payload;
        const instance2 = ReportSubmittedPayload(
          entityType: ReportableEntity.source,
          entityId: 'source-456',
          reason: 'lowQualityJournalism',
        );
        expect(instance1, isNot(equals(instance2)));
      });

      test('props list should contain all relevant fields', () {
        expect(payload.props, [
          payload.entityType,
          payload.entityId,
          payload.reason,
        ]);
      });
    });
  });
}
