import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template comment_deleted_payload}
/// Payload for the `commentDeleted` analytics event.
/// {@endtemplate}
class CommentDeletedPayload extends AnalyticsEventPayload {
  /// {@macro comment_deleted_payload}
  const CommentDeletedPayload({required this.contentId});

  /// The unique identifier of the content the comment belonged to.
  final String contentId;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.contentId: contentId};
  }

  @override
  List<Object> get props => [contentId];
}
