import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'navigation_ad_frequency_config.g.dart';

/// {@template navigation_ad_frequency_config}
/// Encapsulates ad frequency for navigation ads, providing separate controls
/// for ads shown during internal in-app navigation and those triggered by
/// navigating to an external URL.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class NavigationAdFrequencyConfig extends Equatable {
  /// {@macro navigation_ad_frequency_config}
  const NavigationAdFrequencyConfig({
    required this.internalNavigationsBeforeShowingInterstitialAd,
    required this.externalNavigationsBeforeShowingInterstitialAd,
  });

  /// Creates a [NavigationAdFrequencyConfig] from JSON data.
  factory NavigationAdFrequencyConfig.fromJson(Map<String, dynamic> json) =>
      _$NavigationAdFrequencyConfigFromJson(json);

  /// The number of internal page-to-page navigations a user needs to make
  /// within the app before an interstitial ad is shown.
  final int internalNavigationsBeforeShowingInterstitialAd;

  /// The number of external navigations a user needs to make 
  /// within the app before an interstitial ad is shown.
  final int externalNavigationsBeforeShowingInterstitialAd;

  @override
  List<Object> get props => [
    internalNavigationsBeforeShowingInterstitialAd,
    externalNavigationsBeforeShowingInterstitialAd,
  ];

  /// Converts this [NavigationAdFrequencyConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$NavigationAdFrequencyConfigToJson(this);

  /// Creates a copy of this [NavigationAdFrequencyConfig] but with
  /// the given fields replaced with the new values.
  NavigationAdFrequencyConfig copyWith({
    int? internalNavigationsBeforeShowingInterstitialAd,
    int? externalNavigationsBeforeShowingInterstitialAd,
  }) {
    return NavigationAdFrequencyConfig(
      internalNavigationsBeforeShowingInterstitialAd:
          internalNavigationsBeforeShowingInterstitialAd ??
          this.internalNavigationsBeforeShowingInterstitialAd,
      externalNavigationsBeforeShowingInterstitialAd:
          externalNavigationsBeforeShowingInterstitialAd ??
          this.externalNavigationsBeforeShowingInterstitialAd,
    );
  }
}
