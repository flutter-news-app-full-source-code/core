import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template content_saved_payload}
/// Payload for the `contentSaved` analytics event.
/// {@endtemplate}
class ContentSavedPayload extends AnalyticsEventPayload {
  /// {@macro content_saved_payload}
  const ContentSavedPayload({required this.contentId});

  /// The unique identifier of the content being saved.
  final String contentId;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.contentId: contentId};
  }

  @override
  List<Object> get props => [contentId];
}
