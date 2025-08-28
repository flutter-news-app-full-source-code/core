import 'package:core/core.dart' show AdConfig;
import 'package:core/src/models/config/ad_config.dart' show AdConfig;
import 'package:core/src/models/config/config.dart' show AdConfig;
import 'package:core/src/models/models.dart' show AdConfig;
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'ad_platform_identifiers.g.dart';

/// {@template ad_platform_identifiers}
/// Holds all ad identifiers for a specific platform (AdMob, Local etc ).
/// This object is generic and will be stored in a map in [AdConfig].
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AdPlatformIdentifiers extends Equatable {
  /// {@macro ad_platform_identifiers}
  const AdPlatformIdentifiers({
    this.feedNativeAdId,
    this.feedBannerAdId,
    this.articleInterstitialAdId,
    this.inArticleNativeAdId,
    this.inArticleBannerAdId,
  });

  /// Creates an [AdPlatformIdentifiers] from JSON data.
  factory AdPlatformIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$AdPlatformIdentifiersFromJson(json);

  /// Converts this [AdPlatformIdentifiers] instance to JSON data.
  Map<String, dynamic> toJson() => _$AdPlatformIdentifiersToJson(this);

  /// ID for native ads in feeds.
  final String? feedNativeAdId;

  /// ID for banner ads in feeds.
  final String? feedBannerAdId;

  /// ID for interstitial ads in articles.
  final String? articleInterstitialAdId;

  /// ID for native in-article ads.
  final String? inArticleNativeAdId;

  /// ID for banner in-article ads.
  final String? inArticleBannerAdId;

  @override
  List<Object?> get props => [
    feedNativeAdId,
    feedBannerAdId,
    articleInterstitialAdId,
    inArticleNativeAdId,
    inArticleBannerAdId,
  ];

  /// Creates a copy of this [AdPlatformIdentifiers] but with the given fields
  /// replaced with the new values.
  AdPlatformIdentifiers copyWith({
    String? feedNativeAdId,
    String? feedBannerAdId,
    String? articleInterstitialAdId,
    String? inArticleNativeAdId,
    String? inArticleBannerAdId,
  }) {
    return AdPlatformIdentifiers(
      feedNativeAdId: feedNativeAdId ?? this.feedNativeAdId,
      feedBannerAdId: feedBannerAdId ?? this.feedBannerAdId,
      articleInterstitialAdId:
          articleInterstitialAdId ?? this.articleInterstitialAdId,
      inArticleNativeAdId: inArticleNativeAdId ?? this.inArticleNativeAdId,
      inArticleBannerAdId: inArticleBannerAdId ?? this.inArticleBannerAdId,
    );
  }
}
