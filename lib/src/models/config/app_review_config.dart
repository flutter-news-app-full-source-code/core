import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_review_config.g.dart';

/// {@template app_review_config}
/// Defines the remote configuration for the two-layer App Review Funnel.
///
/// This system strategically prompts engaged users for feedback to maximize positive
/// public reviews while capturing constructive criticism privately. It uses a
/// combination of this configuration, the `UserFeedDecoratorStatus` model, and
/// the `AppReview` model to manage the user's journey.
///
/// ### Architectural Workflow
///
/// 1.  **Eligibility**: A user becomes eligible to see the internal prompt after
///     reaching the [positiveInteractionThreshold] of positive actions (e.g.,
///     saving headlines).
///
/// 2.  **Display Logic**: The `FeedDecoratorType.rateApp` decorator's visibility
///     is controlled by the user's `UserFeedDecoratorStatus` for `rateApp`. The
///     decorator is only shown if `isCompleted` is `false` and the cooldown
///     period (defined here as [initialPromptCooldownDays]) has passed since
///     `lastShownAt`.
///
/// 3.  **User Interaction & State Change**:
///     - **On "Yes" (Positive Feedback)**:
///       - An `AppReview` record is created/updated with `initialFeedback: positive`
///         and `wasStoreReviewRequested` is set to `true`.
///       - The native OS in-app review dialog is immediately triggered. This is a
///         "fire-and-forget" action; the OS controls if the dialog appears and
///         provides no feedback to the app.
///       - The `UserFeedDecoratorStatus` for `rateApp` has its `isCompleted` flag
///         set to `true`, **permanently preventing the internal prompt from
///         appearing again for this user.**
///
///     - **On "No" (Negative Feedback)**:
///       - An `AppReview` record is created/updated with `initialFeedback: negative`.
///         The app may optionally collect a reason, which is stored in the
///         `negativeFeedbackHistory`.
///       - The `UserFeedDecoratorStatus` for `rateApp` only has its `lastShownAt`
///         timestamp updated. `isCompleted` remains `false`.
///       - The prompt will not be shown again until the cooldown period has
///         passed, at which point the user may be asked again.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AppReviewConfig extends Equatable {
  /// {@macro app_review_config}
  const AppReviewConfig({
    required this.enabled,
    required this.positiveInteractionThreshold,
    required this.initialPromptCooldownDays,
    required this.isNegativeFeedbackFollowUpEnabled,
  });

  /// Creates a [AppReviewConfig] from JSON data.
  factory AppReviewConfig.fromJson(Map<String, dynamic> json) =>
      _$AppReviewConfigFromJson(json);

  /// A master switch to enable or disable the entire app review funnel.
  final bool enabled;

  /// The number of positive interactions (e.g., saving a headline) required
  /// to trigger the initial review prompt.
  final int positiveInteractionThreshold;

  /// The number of days to wait before showing the initial prompt again if the
  /// user provides negative feedback.
  final int initialPromptCooldownDays;

  /// A switch to enable or disable the follow-up prompt that asks for a
  /// text reason after a user provides negative feedback.
  final bool isNegativeFeedbackFollowUpEnabled;

  /// Converts this [AppReviewConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AppReviewConfigToJson(this);

  @override
  List<Object> get props => [
    enabled,
    positiveInteractionThreshold,
    initialPromptCooldownDays,
    isNegativeFeedbackFollowUpEnabled,
  ];

  /// Creates a copy of this [AppReviewConfig] but with the given fields
  /// replaced with the new values.
  AppReviewConfig copyWith({
    bool? enabled,
    int? positiveInteractionThreshold,
    int? initialPromptCooldownDays,
    bool? isNegativeFeedbackFollowUpEnabled,
  }) {
    return AppReviewConfig(
      enabled: enabled ?? this.enabled,
      positiveInteractionThreshold:
          positiveInteractionThreshold ?? this.positiveInteractionThreshold,
      initialPromptCooldownDays:
          initialPromptCooldownDays ?? this.initialPromptCooldownDays,
      isNegativeFeedbackFollowUpEnabled:
          isNegativeFeedbackFollowUpEnabled ??
          this.isNegativeFeedbackFollowUpEnabled,
    );
  }
}
