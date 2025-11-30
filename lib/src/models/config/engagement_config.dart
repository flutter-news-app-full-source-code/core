import 'package:core/src/enums/engagement_mode.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'engagement_config.g.dart';

/// {@template engagement_config}
/// Defines the remote configuration for user engagement features.
///
/// This model allows administrators to remotely enable/disable the entire engagement
/// system and switch between `reactionsOnly` and `reactionsAndComments` modes.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class EngagementConfig extends Equatable {
  /// {@macro engagement_config}
  const EngagementConfig({required this.enabled, required this.engagementMode});

  /// Creates an [EngagementConfig] from JSON data.
  factory EngagementConfig.fromJson(Map<String, dynamic> json) =>
      _$EngagementConfigFromJson(json);

  /// A master switch to enable or disable the entire engagement system.
  final bool enabled;

  /// Defines the available engagement features (e.g., reactions only or both
  /// reactions and comments).
  final EngagementMode engagementMode;

  /// Converts this [EngagementConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$EngagementConfigToJson(this);

  @override
  List<Object> get props => [enabled, engagementMode];

  /// Creates a copy of this [EngagementConfig] but with the given fields
  /// replaced with the new values.
  EngagementConfig copyWith({bool? enabled, EngagementMode? engagementMode}) {
    return EngagementConfig(
      enabled: enabled ?? this.enabled,
      engagementMode: engagementMode ?? this.engagementMode,
    );
  }
}
