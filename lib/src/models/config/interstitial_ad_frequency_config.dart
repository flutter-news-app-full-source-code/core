import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'interstitial_ad_frequency_config.g.dart';

/// {@template interstitial_ad_frequency_config}
/// Encapsulates ad frequency for interstitial ads shown during page transitions
/// for a specific user role.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InterstitialAdFrequencyConfig extends Equatable {
  /// {@macro interstitial_ad_frequency_config}
  const InterstitialAdFrequencyConfig({
    required this.transitionsBeforeShowingInterstitialAds,
  });

  /// Creates a [InterstitialAdFrequencyConfig] from JSON data.
  factory InterstitialAdFrequencyConfig.fromJson(Map<String, dynamic> json) =>
      _$InterstitialAdFrequencyConfigFromJson(json);

  /// Converts this [InterstitialAdFrequencyConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$InterstitialAdFrequencyConfigToJson(this);

  /// The number of page transitions a user needs to make
  /// before an interstitial ad is shown.
  final int transitionsBeforeShowingInterstitialAds;

  @override
  List<Object> get props => [transitionsBeforeShowingInterstitialAds];

  /// Creates a copy of this [InterstitialAdFrequencyConfig] but with
  /// the given fields replaced with the new values.
  InterstitialAdFrequencyConfig copyWith({
    int? transitionsBeforeShowingInterstitialAds,
  }) {
    return InterstitialAdFrequencyConfig(
      transitionsBeforeShowingInterstitialAds:
          transitionsBeforeShowingInterstitialAds ??
          this.transitionsBeforeShowingInterstitialAds,
    );
  }
}
