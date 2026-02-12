import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'initial_personalization_config.g.dart';

/// {@template initial_personalization_config}
/// Defines the remote configuration for the post-authentication initial
/// personalization flow.
///
/// This model allows administrators to remotely enable or disable the feature
/// and control which selection categories (countries, topics, sources) are
/// presented to new users.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InitialPersonalizationConfig extends Equatable {
  /// {@macro initial_personalization_config}
  const InitialPersonalizationConfig({
    required this.isEnabled,
    required this.isSkippable,
    required this.isCountrySelectionEnabled,
    required this.isTopicSelectionEnabled,
    required this.isSourceSelectionEnabled,
    required this.minSelectionsRequired,
  });

  /// Creates an [InitialPersonalizationConfig] from JSON data.
  factory InitialPersonalizationConfig.fromJson(Map<String, dynamic> json) =>
      _$InitialPersonalizationConfigFromJson(json);

  /// A master switch to enable or disable the entire personalization flow.
  final bool isEnabled;

  /// A switch to allow users to skip the initial ersonalization flow.
  final bool isSkippable;

  /// A switch to enable or disable the country selection step.
  final bool isCountrySelectionEnabled;

  /// A switch to enable or disable the topic selection step.
  final bool isTopicSelectionEnabled;

  /// A switch to enable or disable the source selection step.
  final bool isSourceSelectionEnabled;

  /// The minimum number of items a user must select across all enabled
  /// categories to complete the flow.
  final int minSelectionsRequired;

  /// Converts this [InitialPersonalizationConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$InitialPersonalizationConfigToJson(this);

  @override
  List<Object> get props => [
    isEnabled,
    isCountrySelectionEnabled,
    isTopicSelectionEnabled,
    isSourceSelectionEnabled,
    minSelectionsRequired,
  ];

  /// Creates a copy of this [InitialPersonalizationConfig] but with the given
  /// fields replaced with the new values.
  InitialPersonalizationConfig copyWith({
    bool? isEnabled,
    bool? isSkippable,
    bool? isCountrySelectionEnabled,
    bool? isTopicSelectionEnabled,
    bool? isSourceSelectionEnabled,
    int? minSelectionsRequired,
  }) {
    return InitialPersonalizationConfig(
      isEnabled: isEnabled ?? this.isEnabled,
      isSkippable: isSkippable ?? this.isSkippable,
      isCountrySelectionEnabled:
          isCountrySelectionEnabled ?? this.isCountrySelectionEnabled,
      isTopicSelectionEnabled:
          isTopicSelectionEnabled ?? this.isTopicSelectionEnabled,
      isSourceSelectionEnabled:
          isSourceSelectionEnabled ?? this.isSourceSelectionEnabled,
      minSelectionsRequired:
          minSelectionsRequired ?? this.minSelectionsRequired,
    );
  }
}
