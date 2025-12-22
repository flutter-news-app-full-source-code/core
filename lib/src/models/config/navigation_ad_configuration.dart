import 'package:core/src/enums/ad_type.dart';
import 'package:core/src/enums/subscription/access_tier.dart';
import 'package:core/src/models/config/navigation_ad_frequency_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'navigation_ad_configuration.g.dart';

/// {@template navigation_ad_configuration}
/// Master configuration for all Navigation ads across the application.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class NavigationAdConfiguration extends Equatable {
  /// {@macro navigation_ad_configuration}
  const NavigationAdConfiguration({
    required this.enabled,
    required this.visibleTo,
    this.adType = AdType.interstitial,
  }) : assert(
         adType == AdType.interstitial,
         'Navigation ads must be of type interstitial.',
       );

  /// Creates an [NavigationAdConfiguration] from JSON data.
  factory NavigationAdConfiguration.fromJson(Map<String, dynamic> json) =>
      _$NavigationAdConfigurationFromJson(json);

  /// Converts this [NavigationAdConfiguration] instance to JSON data.
  Map<String, dynamic> toJson() => _$NavigationAdConfigurationToJson(this);

  /// Master switch to enable or disable navigation ads globally.
  final bool enabled;

  /// The type of the ad, fixed to [AdType.interstitial].
  final AdType adType;

  /// Explicitly defines which user roles can see this navigation ad
  /// configuration and their specific frequency settings. If a role is not
  /// in this map, they will not see navigation ads.
  final Map<AccessTier, NavigationAdFrequencyConfig> visibleTo;

  @override
  List<Object?> get props => [enabled, adType, visibleTo];

  /// Creates a copy of this [NavigationAdConfiguration] but with
  /// the given fields replaced with the new values.
  NavigationAdConfiguration copyWith({
    bool? enabled,
    AdType? adType,
    Map<AccessTier, NavigationAdFrequencyConfig>? visibleTo,
  }) {
    return NavigationAdConfiguration(
      enabled: enabled ?? this.enabled,
      adType: adType ?? this.adType,
      visibleTo: visibleTo ?? this.visibleTo,
    );
  }
}
