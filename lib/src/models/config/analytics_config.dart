import 'package:core/src/enums/analytics_provider.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'analytics_config.g.dart';

/// {@template analytics_config}
/// Defines the remote configuration for the analytics system.
///
/// This model allows administrators to remotely enable or disable analytics
/// and to switch the active provider (e.g., from Firebase to Mixpanel).
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AnalyticsConfig extends Equatable {
  /// {@macro analytics_config}
  const AnalyticsConfig({required this.enabled, required this.activeProvider});

  /// Creates an [AnalyticsConfig] from JSON data.
  factory AnalyticsConfig.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsConfigFromJson(json);

  /// A master switch to enable or disable the entire analytics system.
  final bool enabled;

  /// The primary analytics service provider to be used by the system.
  final AnalyticsProvider activeProvider;

  /// Converts this [AnalyticsConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AnalyticsConfigToJson(this);

  @override
  List<Object> get props => [enabled, activeProvider];

  /// Creates a copy of this [AnalyticsConfig] but with the given fields
  /// replaced with the new values.
  AnalyticsConfig copyWith({bool? enabled, AnalyticsProvider? activeProvider}) {
    return AnalyticsConfig(
      enabled: enabled ?? this.enabled,
      activeProvider: activeProvider ?? this.activeProvider,
    );
  }
}
