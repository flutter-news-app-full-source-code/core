import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'review_funnel_config.g.dart';

/// {@template review_funnel_config}
/// Defines the remote configuration for the "Smart Review Funnel" feature.
///
/// This model makes the review funnel's behavior configurable from a dashboard,
/// allowing admins to set the `positiveInteractionThreshold` required to
/// trigger the prompt and the `initialPromptCooldownDays`.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class ReviewFunnelConfig extends Equatable {
  /// {@macro review_funnel_config}
  const ReviewFunnelConfig({
    required this.positiveInteractionThreshold,
    required this.initialPromptCooldownDays,
  });

  /// Creates a [ReviewFunnelConfig] from JSON data.
  factory ReviewFunnelConfig.fromJson(Map<String, dynamic> json) =>
      _$ReviewFunnelConfigFromJson(json);

  /// The number of positive interactions (e.g., saving a headline) required
  /// to trigger the initial review prompt.
  final int positiveInteractionThreshold;

  /// The number of days to wait before showing the initial prompt again if the
  /// user dismisses it.
  final int initialPromptCooldownDays;

  /// Converts this [ReviewFunnelConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$ReviewFunnelConfigToJson(this);

  @override
  List<Object> get props => [
    positiveInteractionThreshold,
    initialPromptCooldownDays,
  ];

  /// Creates a copy of this [ReviewFunnelConfig] but with the given fields
  /// replaced with the new values.
  ReviewFunnelConfig copyWith({
    int? positiveInteractionThreshold,
    int? initialPromptCooldownDays,
  }) {
    return ReviewFunnelConfig(
      positiveInteractionThreshold:
          positiveInteractionThreshold ?? this.positiveInteractionThreshold,
      initialPromptCooldownDays:
          initialPromptCooldownDays ?? this.initialPromptCooldownDays,
    );
  }
}
