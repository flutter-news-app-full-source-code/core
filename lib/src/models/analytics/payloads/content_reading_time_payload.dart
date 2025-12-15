import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template content_reading_time_payload}
/// Payload for the `contentReadingTime` analytics event.
/// {@endtemplate}
class ContentReadingTimePayload extends AnalyticsEventPayload {
  /// {@macro content_reading_time_payload}
  const ContentReadingTimePayload({
    required this.contentId,
    required this.durationInSeconds,
  });

  /// The unique identifier of the content being read.
  final String contentId;

  /// The duration the user spent "reading", in seconds.
  final int durationInSeconds;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.contentId: contentId,
      AnalyticsParameterKeys.durationInSeconds: durationInSeconds,
    };
  }

  @override
  List<Object> get props => [contentId, durationInSeconds];
}
