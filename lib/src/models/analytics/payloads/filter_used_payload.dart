import 'package:core/src/models/analytics/analytics.dart';

/// {@template filter_used_payload}
/// Payload for the `filterUsed` analytics event.
/// {@endtemplate}
class FilterUsedPayload extends AnalyticsEventPayload {
  /// {@macro filter_used_payload}
  const FilterUsedPayload({
    required this.filterId,
    required this.criteriaSummary,
  });

  /// The unique identifier of the filter that was used.
  final String filterId;

  /// A summary of the filter criteria at creation.
  final FilterCriteriaSummary criteriaSummary;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.filterId: filterId,
      AnalyticsParameterKeys.criteriaSummary: criteriaSummary,
    };
  }

  @override
  List<Object> get props => [filterId, criteriaSummary];
}
