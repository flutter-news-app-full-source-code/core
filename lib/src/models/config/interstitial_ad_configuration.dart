import 'package:core/src/enums/ad_type.dart';
import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/models/config/interstitial_ad_frequency_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'interstitial_ad_configuration.g.dart';

/// {@template interstitial_ad_configuration}
/// Master configuration for all interstitial ads across the application.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InterstitialAdConfiguration extends Equatable {
  /// {@macro interstitial_ad_configuration}
  const InterstitialAdConfiguration({
    required this.enabled,
    required this.visibleTo,
    this.adType = AdType.interstitial,
  }) : assert(
         adType == AdType.interstitial,
         'Interstitial ads must be of type interstitial.',
       );

  /// Creates an [InterstitialAdConfiguration] from JSON data.
  factory InterstitialAdConfiguration.fromJson(Map<String, dynamic> json) =>
      _$InterstitialAdConfigurationFromJson(json);

  /// Converts this [InterstitialAdConfiguration] instance to JSON data.
  Map<String, dynamic> toJson() => _$InterstitialAdConfigurationToJson(this);

  /// Master switch to enable or disable interstitial ads globally.
  final bool enabled;

  /// The type of the ad, fixed to [AdType.interstitial].
  final AdType adType;

  /// Explicitly defines which user roles can see this interstitial ad
  /// configuration and their specific frequency settings. If a role is not
  /// in this map, they will not see interstitial ads.
  final Map<AppUserRole, InterstitialAdFrequencyConfig> visibleTo;

  @override
  List<Object?> get props => [enabled, adType, visibleTo];

  /// Creates a copy of this [InterstitialAdConfiguration] but with
  /// the given fields replaced with the new values.
  InterstitialAdConfiguration copyWith({
    bool? enabled,
    AdType? adType,
    Map<AppUserRole, InterstitialAdFrequencyConfig>? visibleTo,
  }) {
    return InterstitialAdConfiguration(
      enabled: enabled ?? this.enabled,
      adType: adType ?? this.adType,
      visibleTo: visibleTo ?? this.visibleTo,
    );
  }
}
