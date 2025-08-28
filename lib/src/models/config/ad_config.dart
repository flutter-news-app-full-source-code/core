import 'package:core/src/enums/ad_platform_type.dart';
import 'package:core/src/models/config/ad_platform_identifiers.dart';
import 'package:core/src/models/config/article_ad_configuration.dart';
import 'package:core/src/models/config/feed_ad_configuration.dart';
import 'package:core/src/models/config/local_ad.dart';
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
    required this.primaryAdPlatform,
    required this.platformAdIdentifiers,
    required this.localAdsCatalog,
    required this.feedAdConfiguration,
    required this.articleAdConfiguration,
  });

  /// Creates an [AdConfig] from JSON data.
  factory AdConfig.fromJson(Map<String, dynamic> json) =>
      _$AdConfigFromJson(json);

  /// Converts this [AdConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$AdConfigToJson(this);

  /// Global choice: AdMob or Local.
  final AdPlatformType primaryAdPlatform;

  /// Map to store identifiers for all platforms.
  final Map<AdPlatformType, AdPlatformIdentifiers> platformAdIdentifiers;

  /// All defined local ads by ID.
  final Map<String, LocalAd> localAdsCatalog;

  /// Configuration for main feed, search feed, similar headlines feed.
  final FeedAdConfiguration feedAdConfiguration;

  /// Configuration for article page ads.
  final ArticleAdConfiguration articleAdConfiguration;

  @override
  List<Object> get props => [
    primaryAdPlatform,
    platformAdIdentifiers,
    localAdsCatalog,
    feedAdConfiguration,
    articleAdConfiguration,
  ];

  /// Creates a copy of this [AdConfig] but with the given fields replaced
  /// with the new values.
  AdConfig copyWith({
    AdPlatformType? primaryAdPlatform,
    Map<AdPlatformType, AdPlatformIdentifiers>? platformAdIdentifiers,
    Map<String, LocalAd>? localAdsCatalog,
    FeedAdConfiguration? feedAdConfiguration,
    ArticleAdConfiguration? articleAdConfiguration,
  }) {
    return AdConfig(
      primaryAdPlatform: primaryAdPlatform ?? this.primaryAdPlatform,
      platformAdIdentifiers:
          platformAdIdentifiers ?? this.platformAdIdentifiers,
      localAdsCatalog: localAdsCatalog ?? this.localAdsCatalog,
      feedAdConfiguration: feedAdConfiguration ?? this.feedAdConfiguration,
      articleAdConfiguration:
          articleAdConfiguration ?? this.articleAdConfiguration,
    );
  }
}
