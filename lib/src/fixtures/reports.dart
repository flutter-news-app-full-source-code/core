import 'dart:math';

import 'package:core/core.dart';

/// Generates a list of predefined reports for fixture data.
///
/// This creates 1 report for each of the first 10 users, targeting a mix of
/// headlines, sources, and comments.
///
/// The optional [now] parameter allows for creating deterministic timestamps,
/// which is essential for testing.
List<Report> getReportsFixturesData({DateTime? now}) {
  final reports = <Report>[];
  final referenceTime = now ?? DateTime.now();
  final users = usersFixturesData.take(10).toList();
  final headlines = getHeadlinesFixturesData(now: referenceTime);
  final sources = getSourcesFixturesData();
  final engagementsWithComments = getEngagementsFixturesData(
    now: referenceTime,
  ).where((e) => e.comment != null).toList();

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

  // Ensure we don't exceed the number of available report IDs
  final count = min(users.length, reportIds.length);

  for (var i = 0; i < count; i++) {
    final user = users[i];
    var status = ModerationStatus.pendingReview;
    // Every 4th report is resolved
    if (i > 0 && i % 4 == 0) {
      status = ModerationStatus.resolved;
    }

    // Create a mix of report types
    if (i < 5) {
      // Report on Headlines
      reports.add(
        Report(
          id: reportIds[i],
          reporterUserId: user.id,
          entityType: ReportableEntity.headline,
          entityId: headlines[i % headlines.length].id,
          reason: headlineReasons[i % headlineReasons.length].name,
          additionalComments: 'This headline seems misleading.',
          status: status,
          createdAt: referenceTime.subtract(Duration(days: i)),
        ),
      );
    } else if (i < 8) {
      // Report on Sources
      reports.add(
        Report(
          id: reportIds[i],
          reporterUserId: user.id,
          entityType: ReportableEntity.source,
          entityId: sources[i % sources.length].id,
          reason: sourceReasons[i % sourceReasons.length].name,
          additionalComments: 'This source has too many ads.',
          status: status,
          createdAt: referenceTime.subtract(Duration(days: i)),
        ),
      );
    } else {
      // Report on Comments (only if we have engagements with comments)
      if (engagementsWithComments.isNotEmpty) {
        reports.add(
          Report(
            id: reportIds[i],
            reporterUserId: user.id,
            entityType: ReportableEntity.comment,
            entityId:
                engagementsWithComments[i % engagementsWithComments.length].id,
            reason: commentReasons[i % commentReasons.length].name,
            additionalComments: 'This comment is spam.',
            status: status,
            createdAt: referenceTime.subtract(Duration(days: i)),
          ),
        );
      }
    }
  }

  return reports;
}
