import 'package:core/src/enums/app_review_feedback.dart';
import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template app_review_prompt_responded_payload}
/// Payload for the `appReviewPromptResponded` analytics event.
/// {@endtemplate}
class AppReviewPromptRespondedPayload extends AnalyticsEventPayload {
  /// {@macro app_review_prompt_responded_payload}
  const AppReviewPromptRespondedPayload({
    required this.feedback,
    required this.isFirstPrompt,
    this.feedbackDetails,
  });

  /// The user's feedback to the internal prompt.
  final AppReviewFeedback feedback;

  /// is this the first or a subsequent prompt.
  final int isFirstPrompt;

  /// If the user provided negative feedback and then submitted details,
  /// this field contains their written feedback.
  final String? feedbackDetails;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.feedback: feedback.name,
      AnalyticsParameterKeys.isFirstPrompt: isFirstPrompt,
      if (feedbackDetails != null)
        AnalyticsParameterKeys.feedbackDetails: feedbackDetails,
    };
  }

  @override
  List<Object?> get props => [feedback, isFirstPrompt, feedbackDetails];
}
