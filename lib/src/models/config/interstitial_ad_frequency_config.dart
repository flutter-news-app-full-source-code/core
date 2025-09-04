import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'interstitial_ad_frequency_config.g.dart';

/// {@template interstitial_ad_frequency_config}
/// Encapsulates user-role-based frequency for interstitial ads shown 
/// during page transitions.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InterstitialAdFrequencyConfig extends Equatable {
  /// {@macro interstitial_ad_frequency_config}
  const InterstitialAdFrequencyConfig({
    required this.guestTransitionsBeforeShowingInterstitialAds,
    required this.standardUserTransitionsBeforeShowingInterstitialAds,
    required this.premiumUserTransitionsBeforeShowingInterstitialAds,
  });

  /// Creates a [InterstitialAdFrequencyConfig] from JSON data.
  factory InterstitialAdFrequencyConfig.fromJson(Map<String, dynamic> json) =>
      _$InterstitialAdFrequencyConfigFromJson(json);

  /// Converts this [InterstitialAdFrequencyConfig] instance to JSON data.
  Map<String, dynamic> toJson() =>
      _$InterstitialAdFrequencyConfigToJson(this);

  /// The number of page transitions a guest user needs to make
  /// before an interstitial ad is shown.
  final int guestTransitionsBeforeShowingInterstitialAds;

  /// The number of page transitions a standard user needs to make
  /// before an interstitial ad is shown.
  final int standardUserTransitionsBeforeShowingInterstitialAds;

  /// The number of page transitions a premium user needs to make
  /// before an interstitial ad is shown.
  final int premiumUserTransitionsBeforeShowingInterstitialAds;

  @override
  List<Object> get props => [
    guestTransitionsBeforeShowingInterstitialAds,
    standardUserTransitionsBeforeShowingInterstitialAds,
    premiumUserTransitionsBeforeShowingInterstitialAds,
  ];

  /// Creates a copy of this [InterstitialAdFrequencyConfig] but with
  /// the given fields replaced with the new values.
  InterstitialAdFrequencyConfig copyWith({
    int? guestTransitionsBeforeShowingInterstitialAds,
    int? standardUserTransitionsBeforeShowingInterstitialAds,
    int? premiumUserTransitionsBeforeShowingInterstitialAds,
  }) {
    return InterstitialAdFrequencyConfig(
      guestTransitionsBeforeShowingInterstitialAds:
          guestTransitionsBeforeShowingInterstitialAds ??
          this.guestTransitionsBeforeShowingInterstitialAds,
      standardUserTransitionsBeforeShowingInterstitialAds:
          standardUserTransitionsBeforeShowingInterstitialAds ??
          this.standardUserTransitionsBeforeShowingInterstitialAds,
      premiumUserTransitionsBeforeShowingInterstitialAds:
          premiumUserTransitionsBeforeShowingInterstitialAds ??
          this.premiumUserTransitionsBeforeShowingInterstitialAds,
    );
  }
}
