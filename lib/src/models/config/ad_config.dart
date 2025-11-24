import 'package:core/src/enums/ad_platform_type.dart';
import 'package:core/src/models/config/ad_platform_identifiers.dart';
import 'package:core/src/models/config/feed_ad_configuration.dart';
import 'package:core/src/models/config/navigation_ad_configuration.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'ad_config.g.dart';

/// {@template ad_config}
/// This is the main container for all ad-related configurations.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AdConfig extends Equatable {
  /// {@macro ad_config}
  const AdConfig({
    required this.enabled,
    required this.primaryAdPlatform,
    required this.platformAdIdentifiers,
    required this.feedAdConfiguration,
    required this.navigationAdConfiguration,
  });

  /// Creates an [AdConfig] from JSON data.
  factory AdConfig.fromJson(Map<String, dynamic> json) =>
      _$AdConfigFromJson(json);

  /// Converts this [AdConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AdConfigToJson(this);

  /// Global switch to enable or disable all ads in the application.
  final bool enabled;

  /// Global choice: AdMob, etc.
  final AdPlatformType primaryAdPlatform;

  /// Map to store identifiers for all platforms.
  final Map<AdPlatformType, AdPlatformIdentifiers> platformAdIdentifiers;

  /// Configuration for main feed, search feed, etc.
  final FeedAdConfiguration feedAdConfiguration;

  /// Configuration for all navigation ads.
  final NavigationAdConfiguration navigationAdConfiguration;

  @override
  List<Object> get props => [
    enabled,
    primaryAdPlatform,
    platformAdIdentifiers,
    feedAdConfiguration,
    navigationAdConfiguration,
  ];

  /// Creates a copy of this [AdConfig] but with the given fields replaced
  /// with the new values.
  AdConfig copyWith({
    bool? enabled,
    AdPlatformType? primaryAdPlatform,
    Map<AdPlatformType, AdPlatformIdentifiers>? platformAdIdentifiers,
    FeedAdConfiguration? feedAdConfiguration,
    NavigationAdConfiguration? interstitialAdConfiguration,
  }) {
    return AdConfig(
      enabled: enabled ?? this.enabled,
      primaryAdPlatform: primaryAdPlatform ?? this.primaryAdPlatform,
      platformAdIdentifiers:
          platformAdIdentifiers ?? this.platformAdIdentifiers,
      feedAdConfiguration: feedAdConfiguration ?? this.feedAdConfiguration,
      navigationAdConfiguration:
          interstitialAdConfiguration ?? this.navigationAdConfiguration,
    );
  }
}
