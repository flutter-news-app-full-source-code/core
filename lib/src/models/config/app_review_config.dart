import 'package:core/src/enums/positive_interaction_type.dart';
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
///     performing a total number of positive actions, as defined in
///     [eligiblePositiveInteractions]. The required number of actions is set by
///     `interactionCycleThreshold`.
///
/// 2.  **Display Logic**: The `FeedDecoratorType.rateApp` decorator's visibility
///     is controlled by the user's `UserFeedDecoratorStatus` for `rateApp`. The
///     decorator is only shown if `isCompleted` is `false` and the cooldown
///     period (defined here as [initialPromptCooldownDays]) has passed since
///     `lastShownAt`.
///
/// 3.  **User Interaction & State Change**:
///     - **On "Yes" (Positive Feedback)**:
///       - An `AppReview` record is created/updated with `initialFeedback: positive`.
///       - If [isPositiveFeedbackFollowUpEnabled] is `true`, the native OS
///         in-app review dialog is triggered. `wasStoreReviewRequested` is set
///         to `true` to record that the attempt was made.
///       - Regardless of whether the dialog was requested, the
///         `UserFeedDecoratorStatus` for `rateApp` has its `isCompleted` flag
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
    required this.interactionCycleThreshold,
    required this.initialPromptCooldownDays,
    required this.eligiblePositiveInteractions,
    required this.isNegativeFeedbackFollowUpEnabled,
    required this.isPositiveFeedbackFollowUpEnabled,
  });

  /// Creates a [AppReviewConfig] from JSON data.
  factory AppReviewConfig.fromJson(Map<String, dynamic> json) =>
      _$AppReviewConfigFromJson(json);

  /// A master switch to enable or disable the entire app review funnel.
  final bool enabled;

  /// The number of positive interactions required to trigger the review prompt.
  /// the user's action counter resets after each prompt cycle.
  final int interactionCycleThreshold;

  /// The number of days to wait before showing the initial prompt again if the
  /// user provides negative feedback.
  final int initialPromptCooldownDays;

  /// A list of user actions that are considered "positive" and count towards
  /// the `interactionCycleThreshold`.
  final List<PositiveInteractionType> eligiblePositiveInteractions;

  /// A switch to enable or disable the follow-up prompt that asks for a
  /// text reason after a user provides negative feedback.
  final bool isNegativeFeedbackFollowUpEnabled;

  /// A switch to enable or disable invoking the native OS in-app review dialog
  /// after a user provides positive feedback.
  ///
  /// This allows for testing the positive flow without consuming review quotas.
  final bool isPositiveFeedbackFollowUpEnabled;

  /// Converts this [AppReviewConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AppReviewConfigToJson(this);

  @override
  List<Object> get props => [
    enabled,
    interactionCycleThreshold,
    initialPromptCooldownDays,
    eligiblePositiveInteractions,
    isNegativeFeedbackFollowUpEnabled,
    isPositiveFeedbackFollowUpEnabled,
  ];

  /// Creates a copy of this [AppReviewConfig] but with the given fields
  /// replaced with the new values.
  AppReviewConfig copyWith({
    bool? enabled,
    int? interactionCycleThreshold,
    int? initialPromptCooldownDays,
    List<PositiveInteractionType>? eligiblePositiveInteractions,
    bool? isNegativeFeedbackFollowUpEnabled,
    bool? isPositiveFeedbackFollowUpEnabled,
  }) {
    return AppReviewConfig(
      enabled: enabled ?? this.enabled,
      interactionCycleThreshold:
          interactionCycleThreshold ?? this.interactionCycleThreshold,
      initialPromptCooldownDays:
          initialPromptCooldownDays ?? this.initialPromptCooldownDays,
      eligiblePositiveInteractions:
          eligiblePositiveInteractions ?? this.eligiblePositiveInteractions,
      isNegativeFeedbackFollowUpEnabled:
          isNegativeFeedbackFollowUpEnabled ??
          this.isNegativeFeedbackFollowUpEnabled,
      isPositiveFeedbackFollowUpEnabled:
          isPositiveFeedbackFollowUpEnabled ??
          this.isPositiveFeedbackFollowUpEnabled,
    );
  }
}
