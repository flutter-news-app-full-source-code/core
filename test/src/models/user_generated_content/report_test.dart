import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Report', () {
    final now = DateTime.now();
    // Use the first item from the fixtures as the test subject.
    final reportFixture = getReportsFixturesData(now: now).first;

    group('constructor', () {
      test('returns correct instance', () {
        expect(reportFixture, isA<Report>());
      });
    });

    group('fromJson/toJson', () {
      test('round trip with all fields populated', () {
        final json = reportFixture.toJson();
        final fromJson = Report.fromJson(json);
        expect(fromJson, equals(reportFixture));
      });
    });

    group('copyWith', () {
      test('returns a new instance with updated values', () {
        final updatedReport = reportFixture.copyWith(
          status: ReportStatus.resolved,
        );
        expect(updatedReport.status, ReportStatus.resolved);
        expect(updatedReport, isNot(equals(reportFixture)));
      });

      test('copyWith allows setting a field to null', () {
        final updatedReport = reportFixture.copyWith(
          // Use ValueWrapper to explicitly pass null.
          additionalComments: const ValueWrapper(null),
        );
        expect(updatedReport.additionalComments, isNull);
      });
    });

    group('Equatable', () {
      test('instances with the same properties are equal', () {
        final report1 = getReportsFixturesData(now: now).first;
        final report2 = getReportsFixturesData(now: now).first;
        expect(report1, equals(report2));
      });
    });
  });
}
