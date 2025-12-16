import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template content_shared_payload}
/// Payload for the `contentShared` analytics event.
/// {@endtemplate}
class ContentSharedPayload extends AnalyticsEventPayload {
  /// {@macro content_shared_payload}
  const ContentSharedPayload({
    required this.contentId,
    required this.contentType,
    required this.shareMedium,
  });

  /// The unique identifier of the content being shared.
  final String contentId;

  /// The type of content being shared (e.g., 'headline').
  final String contentType;

  /// The medium through which the content was shared (e.g., 'whatsapp').
  final String shareMedium;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.contentId: contentId,
      AnalyticsParameterKeys.contentType: contentType,
      AnalyticsParameterKeys.shareMedium: shareMedium,
    };
  }

  @override
  List<Object> get props => [contentId, contentType, shareMedium];
}
