import 'package:json_annotation/json_annotation.dart';

/// {@template report_status}
/// Defines the moderation workflow status for a user-submitted report.
/// {@endtemplate}
@JsonEnum()
enum ReportStatus {
  /// The report has been submitted by a user and is awaiting review.
  @JsonValue('submitted')
  submitted,

  /// A moderator is actively reviewing the report.
  @JsonValue('inReview')
  inReview,

  /// The report has been reviewed and a decision has been made.
  @JsonValue('resolved')
  resolved,
}
