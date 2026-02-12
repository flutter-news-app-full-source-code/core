import 'package:core/src/models/config/app_tour_config.dart';
import 'package:core/src/models/config/initial_personalization_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'onboarding_config.g.dart';

/// {@template onboarding_config}
/// A container for all onboarding-related feature configurations.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class OnboardingConfig extends Equatable {
  /// {@macro onboarding_config}
  const OnboardingConfig({
    required this.appTour,
    required this.initialPersonalization,
  });

  /// Creates an [OnboardingConfig] from JSON data.
  factory OnboardingConfig.fromJson(Map<String, dynamic> json) =>
      _$OnboardingConfigFromJson(json);

  /// Configuration for the pre-authentication app tour.
  final AppTourConfig appTour;

  /// Configuration for the post-authentication initial personalization flow.
  final InitialPersonalizationConfig initialPersonalization;

  /// Converts this [OnboardingConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$OnboardingConfigToJson(this);

  @override
  List<Object> get props => [appTour, initialPersonalization];

  /// Creates a copy of this [OnboardingConfig] but with the given fields
  /// replaced with the new values.
  OnboardingConfig copyWith({
    AppTourConfig? appTour,
    InitialPersonalizationConfig? initialPersonalization,
  }) {
    return OnboardingConfig(
      appTour: appTour ?? this.appTour,
      initialPersonalization:
          initialPersonalization ?? this.initialPersonalization,
    );
  }
}
