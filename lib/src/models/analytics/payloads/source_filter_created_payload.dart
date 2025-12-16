import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';
import 'package:core/src/models/analytics/payloads/source_filter_criteria_summary.dart';

/// {@template source_filter_created_payload}
/// Payload for the `sourceFilterCreated` analytics event.
/// {@endtemplate}
class SourceFilterCreatedPayload extends AnalyticsEventPayload {
  /// {@macro source_filter_created_payload}
  const SourceFilterCreatedPayload({
    required this.filterId,
    required this.criteriaSummary,
    required this.isPinned,
    this.wasPinningLimited = false,
  });

  /// The unique identifier of the filter that was created.
  final String filterId;

  /// A summary of the filter criteria at creation.
  final SourceFilterCriteriaSummary criteriaSummary;

  /// The initial pinned state of the filter at creation.
  final bool isPinned;

  /// A flag indicating if the user attempted to pin this filter during
  /// creation but was prevented by a limit.
  final bool wasPinningLimited;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.filterId: filterId,
      AnalyticsParameterKeys.isPinned: isPinned,
      AnalyticsParameterKeys.criteriaSummary: criteriaSummary.toJson(),
      if (wasPinningLimited) 'wasPinningLimited': wasPinningLimited,
    };
  }

  @override
  List<Object?> get props => [
    filterId,
    criteriaSummary,
    isPinned,
    wasPinningLimited,
  ];
}
