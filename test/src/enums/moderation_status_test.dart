import 'package:core/src/enums/moderation_status.dart';
import 'package:test/test.dart';

void main() {
  group('ModerationStatus', () {
    test('has correct values', () {
      expect(
        ModerationStatus.values,
        containsAll([
          ModerationStatus.pendingReview,
          ModerationStatus.resolved,
        ]),
      );
    });

    test('has correct string values', () {
      expect(ModerationStatus.pendingReview.name, 'pendingReview');
      expect(ModerationStatus.resolved.name, 'resolved');
    });

    test('can be created from string values', () {
      expect(
        ModerationStatus.values.byName('pendingReview'),
        ModerationStatus.pendingReview,
      );
      expect(
        ModerationStatus.values.byName('resolved'),
        ModerationStatus.resolved,
      );
    });
  });
}
