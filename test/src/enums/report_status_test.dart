import 'package:core/src/enums/report_status.dart';
import 'package:test/test.dart';

void main() {
  group('ReportStatus', () {
    test('has correct values', () {
      expect(
        ReportStatus.values,
        containsAll([
          ReportStatus.submitted,
          ReportStatus.inReview,
          ReportStatus.resolved,
        ]),
      );
    });

    test('has correct string values', () {
      expect(ReportStatus.submitted.name, 'submitted');
      expect(ReportStatus.inReview.name, 'inReview');
      expect(ReportStatus.resolved.name, 'resolved');
    });

    test('can be created from string values', () {
      expect(ReportStatus.values.byName('submitted'), ReportStatus.submitted);
      expect(ReportStatus.values.byName('inReview'), ReportStatus.inReview);
      expect(ReportStatus.values.byName('resolved'), ReportStatus.resolved);
    });
  });
}
