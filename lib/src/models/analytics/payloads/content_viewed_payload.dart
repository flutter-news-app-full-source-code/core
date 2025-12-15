import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template content_viewed_payload}
/// Payload for the `contentViewed` analytics event.
/// {@endtemplate}
class ContentViewedPayload extends AnalyticsEventPayload {
  /// {@macro content_viewed_payload}
  const ContentViewedPayload({
    required this.contentId,
    required this.contentType,
  });

  /// The unique identifier of the content being viewed.
  final String contentId;

  /// The type of content being viewed (e.g., 'headline').
  final String contentType;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.contentId: contentId,
      AnalyticsParameterKeys.contentType: contentType,
    };
  }

  @override
  List<Object> get props => [contentId, contentType];
}
