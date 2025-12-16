import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template reaction_created_payload}
/// Payload for the `reactionCreated` analytics event.
/// {@endtemplate}
class ReactionCreatedPayload extends AnalyticsEventPayload {
  /// {@macro reaction_created_payload}
  const ReactionCreatedPayload({
    required this.contentId,
    required this.reactionType,
  });

  /// The unique identifier of the content being reacted to.
  final String contentId;

  /// The type of the reaction.
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
