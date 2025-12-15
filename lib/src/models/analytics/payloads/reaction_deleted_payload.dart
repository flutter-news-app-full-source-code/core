import 'package:core/src/enums/reaction_type.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template reaction_deleted_payload}
/// Payload for the `reactionDeleted` analytics event.
/// {@endtemplate}
class ReactionDeletedPayload extends AnalyticsEventPayload {
  /// {@macro reaction_deleted_payload}
  const ReactionDeletedPayload({
    required this.contentId,
    required this.reactionType,
  });

  /// The unique identifier of the content the reaction was removed from.
  final String contentId;

  /// The type of the reaction that was removed.
  final ReactionType reactionType;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.contentId: contentId,
      AnalyticsParameterKeys.reactionType: reactionType.name,
    };
  }

  @override
  List<Object> get props => [contentId, reactionType];
}
