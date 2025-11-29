import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_review_config.g.dart';

/// {@template app_review_config}
/// Defines the remote configuration for the "Smart App Review" feature.
///
/// This model makes the review funnel's behavior configurable from a dashboard,
/// allowing admins to set the `positiveInteractionThreshold` required to
/// trigger the prompt and the `initialPromptCooldownDays`.
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
