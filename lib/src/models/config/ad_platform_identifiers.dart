import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'ad_platform_identifiers.g.dart';

/// {@template ad_platform_identifiers}
/// Holds all ad identifiers for a specific platform (AdMob, etc ).
/// This object is generic and will be stored in a map in "AdConfig".
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AdPlatformIdentifiers extends Equatable {
  /// {@macro ad_platform_identifiers}
  const AdPlatformIdentifiers({
    this.androidNativeAdId,
    this.androidBannerAdId,
    this.androidInterstitialAdId,
    this.androidRewardedAdId,
    this.iosNativeAdId,
    this.iosBannerAdId,
    this.iosInterstitialAdId,
    this.iosRewardedAdId,
  });

  /// Creates an [AdPlatformIdentifiers] from JSON data.
  factory AdPlatformIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$AdPlatformIdentifiersFromJson(json);

  /// Converts this [AdPlatformIdentifiers] instance to JSON data.
  Map<String, dynamic> toJson() => _$AdPlatformIdentifiersToJson(this);

  /// Android ID for native ads.
  final String? androidNativeAdId;

  /// Android ID for banner ads.
  final String? androidBannerAdId;

  /// Android ID for interstitial ads.
  final String? androidInterstitialAdId;

  /// Android ID for rewarded ads.
  final String? androidRewardedAdId;

  /// iOS ID for native ads.
  final String? iosNativeAdId;

  /// iOS ID for banner ads.
  final String? iosBannerAdId;

  /// iOS ID for interstitial ads.
  final String? iosInterstitialAdId;

  /// iOS ID for rewarded ads.
  final String? iosRewardedAdId;

  @override
  List<Object?> get props => [
    androidNativeAdId,
    androidBannerAdId,
    androidInterstitialAdId,
    androidRewardedAdId,
    iosNativeAdId,
    iosBannerAdId,
    iosInterstitialAdId,
    iosRewardedAdId,
  ];

  /// Creates a copy of this [AdPlatformIdentifiers] but with the given fields
  /// replaced with the new values.
  AdPlatformIdentifiers copyWith({
    String? androidNativeAdId,
    String? androidBannerAdId,
    String? androidInterstitialAdId,
    String? androidRewardedAdId,
    String? iosNativeAdId,
    String? iosBannerAdId,
    String? iosInterstitialAdId,
    String? iosRewardedAdId,
  }) {
    return AdPlatformIdentifiers(
      androidNativeAdId: androidNativeAdId ?? this.androidNativeAdId,
      androidBannerAdId: androidBannerAdId ?? this.androidBannerAdId,
      androidInterstitialAdId:
          androidInterstitialAdId ?? this.androidInterstitialAdId,
      androidRewardedAdId: androidRewardedAdId ?? this.androidRewardedAdId,
      iosNativeAdId: iosNativeAdId ?? this.iosNativeAdId,
      iosBannerAdId: iosBannerAdId ?? this.iosBannerAdId,
      iosInterstitialAdId: iosInterstitialAdId ?? this.iosInterstitialAdId,
      iosRewardedAdId: iosRewardedAdId ?? this.iosRewardedAdId,
    );
  }
}
