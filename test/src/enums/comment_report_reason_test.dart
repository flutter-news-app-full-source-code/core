import 'package:core/src/enums/comment_report_reason.dart';
import 'package:test/test.dart';

void main() {
  group('CommentReportReason', () {
    test('has correct values', () {
      expect(
        CommentReportReason.values,
        containsAll([
          CommentReportReason.spamOrAdvertising,
          CommentReportReason.harassmentOrBullying,
          CommentReportReason.hateSpeech,
        ]),
      );
    });

    test('has correct string values', () {
      expect(CommentReportReason.spamOrAdvertising.name, 'spamOrAdvertising');
      expect(
        CommentReportReason.harassmentOrBullying.name,
        'harassmentOrBullying',
      );
      expect(CommentReportReason.hateSpeech.name, 'hateSpeech');
    });

    test('can be created from string values', () {
      expect(
        CommentReportReason.values.byName('spamOrAdvertising'),
        CommentReportReason.spamOrAdvertising,
      );
    });
  });
}
