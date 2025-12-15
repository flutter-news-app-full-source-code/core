import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template content_unsaved_payload}
/// Payload for the `contentUnsaved` analytics event.
/// {@endtemplate}
class ContentUnsavedPayload extends AnalyticsEventPayload {
  /// {@macro content_unsaved_payload}
  const ContentUnsavedPayload({required this.contentId});

  /// The unique identifier of the content being unsaved.
  final String contentId;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.contentId: contentId};
  }

  @override
  List<Object> get props => [contentId];
}
