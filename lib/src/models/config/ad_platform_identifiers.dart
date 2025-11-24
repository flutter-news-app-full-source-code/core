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
    this.nativeAdId,
    this.bannerAdId,
    this.interstitialAdId,
  });

  /// Creates an [AdPlatformIdentifiers] from JSON data.
  factory AdPlatformIdentifiers.fromJson(Map<String, dynamic> json) =>
      _$AdPlatformIdentifiersFromJson(json);

  /// Converts this [AdPlatformIdentifiers] instance to JSON data.
  Map<String, dynamic> toJson() => _$AdPlatformIdentifiersToJson(this);

  /// ID for native ads.
  final String? nativeAdId;

  /// ID for banner ads.
  final String? bannerAdId;

  /// ID for interstitial ads.
  final String? interstitialAdId;

  @override
  List<Object?> get props => [nativeAdId, bannerAdId, interstitialAdId];

  /// Creates a copy of this [AdPlatformIdentifiers] but with the given fields
  /// replaced with the new values.
  AdPlatformIdentifiers copyWith({
    String? nativeAdId,
    String? bannerAdId,
    String? interstitialAdId,
  }) {
    return AdPlatformIdentifiers(
      nativeAdId: nativeAdId ?? this.nativeAdId,
      bannerAdId: bannerAdId ?? this.bannerAdId,
      interstitialAdId: interstitialAdId ?? this.interstitialAdId,
    );
  }
}
