import 'package:core/core.dart';
import 'package:test/test.dart';

void main() {
  group('Report', () {
    final now = DateTime.now();
    final reportFixture = Report(
      id: 'report_1',
      reporterUserId: 'user_1',
      entityType: ReportableEntity.headline,
      entityId: 'headline_1',
      reason: HeadlineReportReason.clickbaitTitle.name,
      status: ReportStatus.submitted,
      createdAt: now,
      additionalComments: 'The title is misleading.',
    );

    test('can be instantiated', () {
      expect(reportFixture, isA<Report>());
    });

    test('supports value equality', () {
      final anotherReport = Report(
        id: 'report_1',
        reporterUserId: 'user_1',
        entityType: ReportableEntity.headline,
        entityId: 'headline_1',
        reason: HeadlineReportReason.clickbaitTitle.name,
        status: ReportStatus.submitted,
        createdAt: now,
        additionalComments: 'The title is misleading.',
      );
      expect(reportFixture, equals(anotherReport));
    });

    test('can be created from JSON', () {
      final json = reportFixture.toJson();
      final fromJson = Report.fromJson(json);
      expect(fromJson, equals(reportFixture));
    });

    test('can be converted to JSON', () {
      final json = reportFixture.toJson();
      final expectedJson = {
        'id': 'report_1',
        'reporterUserId': 'user_1',
        'entityType': 'headline',
        'entityId': 'headline_1',
        'reason': 'clickbaitTitle',
        'status': 'submitted',
        'additionalComments': 'The title is misleading.',
        'createdAt': now.toIso8601String(),
      };
      expect(json, equals(expectedJson));
    });

    test('copyWith creates a copy with updated values', () {
      final updatedReport = reportFixture.copyWith(
        status: ReportStatus.resolved,
        additionalComments: null,
      );
      expect(updatedReport.status, ReportStatus.resolved);
      expect(updatedReport.additionalComments, isNull);
      expect(updatedReport, isNot(equals(reportFixture)));
    });
  });
}
