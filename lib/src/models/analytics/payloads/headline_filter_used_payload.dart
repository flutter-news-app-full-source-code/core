import 'package:core/src/models/analytics/analytics.dart';

/// {@template headline_filter_used_payload}
/// Payload for the `headlineFilterUsed` analytics event.
/// {@endtemplate}
class HeadlineFilterUsedPayload extends AnalyticsEventPayload {
  /// {@macro headline_filter_used_payload}
  const HeadlineFilterUsedPayload({
    required this.filterId,
    required this.criteriaSummary,
  });

  /// The unique identifier of the filter that was used.
  final String filterId;

  /// A summary of the filter criteria at creation.
  final HeadlineFilterCriteriaSummary criteriaSummary;

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
