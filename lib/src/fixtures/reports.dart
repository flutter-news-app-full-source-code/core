import 'package:core/core.dart';
import 'package:core/src/fixtures/comments.dart';

/// A list of predefined reports for fixture data.
/// This creates 1 report for each of the first 10 users, targeting a mix of
/// headlines, sources, and comments.
final List<Report> reportsFixturesData = () {
  final reports = <Report>[];
  final users = usersFixturesData.take(10).toList();
  final headlines = headlinesFixturesData.take(10).toList();
  final reportIds = [
    kReportId1,
    kReportId2,
    kReportId3,
    kReportId4,
    kReportId5,
    kReportId6,
    kReportId7,
    kReportId8,
    kReportId9,
    kReportId10,
  ];
  const headlineReasons = HeadlineReportReason.values;
  const sourceReasons = SourceReportReason.values;
  const commentReasons = CommentReportReason.values;

  for (var i = 0; i < users.length; i++) {
    final user = users[i];
    final headline = headlines[i];
    var status = ReportStatus.submitted;
    if (i % 3 == 0) {
      status = ReportStatus.inReview;
    } else if (i % 5 == 0) {
      status = ReportStatus.resolved;
    }

    // Create a mix of report types
    if (i < 5) {
      // Report on Headlines
      reports.add(
        Report(
          id: reportIds[i],
          reporterUserId: user.id,
          entityType: ReportableEntity.headline,
          entityId: headline.id,
          reason: headlineReasons[i % headlineReasons.length].name,
          additionalComments: 'This headline seems misleading.',
          status: status,
          createdAt: DateTime.now().subtract(Duration(days: i)),
        ),
      );
    } else if (i < 8) {
      // Report on Sources
      reports.add(
        Report(
          id: reportIds[i],
          reporterUserId: user.id,
          entityType: ReportableEntity.source,
          entityId: sourcesFixturesData[i].id,
          reason: sourceReasons[i % sourceReasons.length].name,
          additionalComments: 'This source has too many ads.',
          status: status,
          createdAt: DateTime.now().subtract(Duration(days: i)),
        ),
      );
    } else {
      // Report on Comments
      reports.add(
        Report(
          id: reportIds[i],
          reporterUserId: user.id,
          entityType: ReportableEntity.comment,
          entityId: commentsFixturesData[i].id,
          reason: commentReasons[i % commentReasons.length].name,
          additionalComments: 'This comment is spam.',
          status: status,
          createdAt: DateTime.now().subtract(Duration(days: i)),
        ),
      );
    }
  }

  return reports;
}();
