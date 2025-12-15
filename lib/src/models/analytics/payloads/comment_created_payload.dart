import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template comment_created_payload}
/// Payload for the `commentCreated` analytics event.
/// {@endtemplate}
class CommentCreatedPayload extends AnalyticsEventPayload {
  /// {@macro comment_created_payload}
  const CommentCreatedPayload({required this.contentId});

  /// The unique identifier of the content being commented on.
  final String contentId;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.contentId: contentId};
  }

  @override
  List<Object> get props => [contentId];
}
