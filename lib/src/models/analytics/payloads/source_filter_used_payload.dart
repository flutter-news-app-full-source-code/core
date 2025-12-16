import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';
import 'package:core/src/models/analytics/payloads/source_filter_criteria_summary.dart';

/// {@template source_filter_used_payload}
/// Payload for the `sourceFilterUsed` analytics event.
/// {@endtemplate}
class SourceFilterUsedPayload extends AnalyticsEventPayload {
  /// {@macro source_filter_used_payload}
  const SourceFilterUsedPayload({
    required this.filterId,
    required this.criteriaSummary,
  });

  /// The unique identifier of the filter that was used.
  final String filterId;

  /// A summary of the filter criteria at creation.
  final SourceFilterCriteriaSummary criteriaSummary;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.filterId: filterId,
      AnalyticsParameterKeys.criteriaSummary: criteriaSummary.toJson(),
    };
  }

  @override
  List<Object> get props => [filterId, criteriaSummary];
}
