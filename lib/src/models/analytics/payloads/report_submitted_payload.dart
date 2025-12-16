import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template report_submitted_payload}
/// Payload for the `reportSubmitted` analytics event.
/// {@endtemplate}
class ReportSubmittedPayload extends AnalyticsEventPayload {
  /// {@macro report_submitted_payload}
  const ReportSubmittedPayload({
    required this.entityType,
    required this.entityId,
    required this.reason,
  });

  /// The type of entity being reported.
  final ReportableEntity entityType;

  /// The ID of the specific item being reported.
  final String entityId;

  /// The reason for the report [HeadlineReportReason], [SourceReportReason], [CommentReportReason].
  final String reason;

  @override
  Map<String, dynamic> toMap() {
    return {
      'entityType': entityType.name,
      'entityId': entityId,
      'reason': reason,
    };
  }

  @override
  List<Object> get props => [entityType, entityId, reason];
}
