import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'article_interstitial_ad_configuration.g.dart';

/// {@template article_interstitial_ad_configuration}
/// Configuration for interstitial ads, specifically for the Article Page.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class ArticleInterstitialAdConfiguration extends Equatable {
  /// {@macro article_interstitial_ad_configuration}
  const ArticleInterstitialAdConfiguration({
    required this.enabled,
    required this.frequencyConfig, this.adType = AdType.interstitial,
  }) : assert(
         adType == AdType.interstitial,
         'Article interstitial ads must be of type interstitial.',
       );

  /// Creates an [ArticleInterstitialAdConfiguration] from JSON data.
  factory ArticleInterstitialAdConfiguration.fromJson(
    Map<String, dynamic> json,
  ) => _$ArticleInterstitialAdConfigurationFromJson(json);

  /// Converts this [ArticleInterstitialAdConfiguration] instance to JSON data.
  Map<String, dynamic> toJson() =>
      _$ArticleInterstitialAdConfigurationToJson(this);

  /// Master switch to enable or disable interstitial ads on article pages.
  final bool enabled;

  /// The type of the ad, fixed to [AdType.interstitial].
  final AdType adType;

  /// User-role-based frequency for interstitial ads on article pages.
  final ArticleInterstitialAdFrequencyConfig frequencyConfig;

  @override
  List<Object?> get props => [enabled, adType, frequencyConfig];

  /// Creates a copy of this [ArticleInterstitialAdConfiguration] but with
  /// the given fields replaced with the new values.
  ArticleInterstitialAdConfiguration copyWith({
    bool? enabled,
    AdType? adType,
    ArticleInterstitialAdFrequencyConfig? frequencyConfig,
  }) {
    return ArticleInterstitialAdConfiguration(
      enabled: enabled ?? this.enabled,
      adType: adType ?? this.adType,
      frequencyConfig: frequencyConfig ?? this.frequencyConfig,
    );
  }
}
