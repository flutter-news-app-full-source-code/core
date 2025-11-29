import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_review_config.g.dart';

/// {@template app_review_config}
/// Defines the remote configuration for the two-layer App Review Funnel.
///
/// This system strategically prompts engaged users for feedback to maximize
/// positive public reviews while capturing constructive criticism privately.
///
/// ### How It Works
///
/// 1.  **Trigger**: A user becomes eligible to see the prompt after reaching
///     the [positiveInteractionThreshold] of positive actions (e.g., saves).
///
/// 2.  **Prompt**: The `FeedDecoratorType.rateApp` decorator asks the user
///     "Are you enjoying the app?". The display logic is managed by the user's
///     `UserFeedDecoratorStatus` for `rateApp`, which respects the
///     [initialPromptCooldownDays].
///
/// 3.  **Action**:
///     - **On "Yes"**: The client sets `isCompleted` to `true` on the user's
///       `UserFeedDecoratorStatus` for `rateApp` and immediately triggers the
///       native OS in-app review dialog if applicable ie the app is hosted in 
///       google play or apple store. The prompt will not be shown again.
///     - **On "No"**: The client only updates the `lastShownAt` timestamp on
///       the status object. The prompt will not be shown again until the
///       cooldown period has passed. No public review is requested.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AppReviewConfig extends Equatable {
  /// {@macro app_review_config}
  const AppReviewConfig({
    required this.positiveInteractionThreshold,
    required this.initialPromptCooldownDays,
  });

  /// Creates a [AppReviewConfig] from JSON data.
  factory AppReviewConfig.fromJson(Map<String, dynamic> json) =>
      _$AppReviewConfigFromJson(json);

  /// The number of positive interactions (e.g., saving a headline) required
  /// to trigger the initial review prompt.
  final int positiveInteractionThreshold;

  /// The number of days to wait before showing the initial prompt again if the
  /// user dismisses it.
  final int initialPromptCooldownDays;

  /// Converts this [AppReviewConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AppReviewConfigToJson(this);

  @override
  List<Object> get props => [
    positiveInteractionThreshold,
    initialPromptCooldownDays,
  ];

  /// Creates a copy of this [AppReviewConfig] but with the given fields
  /// replaced with the new values.
  AppReviewConfig copyWith({
    int? positiveInteractionThreshold,
    int? initialPromptCooldownDays,
  }) {
    return AppReviewConfig(
      positiveInteractionThreshold:
          positiveInteractionThreshold ?? this.positiveInteractionThreshold,
      initialPromptCooldownDays:
          initialPromptCooldownDays ?? this.initialPromptCooldownDays,
    );
  }
}
