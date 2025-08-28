import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'article_interstitial_ad_frequency_config.g.dart';

/// {@template article_interstitial_ad_frequency_config}
/// Encapsulates user-role-based frequency for interstitial ads on article pages.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class ArticleInterstitialAdFrequencyConfig extends Equatable {
  /// {@macro article_interstitial_ad_frequency_config}
  const ArticleInterstitialAdFrequencyConfig({
    required this.guestArticlesToReadBeforeShowingInterstitialAds,
    required this.standardUserArticlesToReadBeforeShowingInterstitialAds,
    required this.premiumUserArticlesToReadBeforeShowingInterstitialAds,
  });

  /// Creates an [ArticleInterstitialAdFrequencyConfig] from JSON data.
  factory ArticleInterstitialAdFrequencyConfig.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ArticleInterstitialAdFrequencyConfigFromJson(json);

  /// Converts this [ArticleInterstitialAdFrequencyConfig] instance to JSON data.
  Map<String, dynamic> toJson() =>
      _$ArticleInterstitialAdFrequencyConfigToJson(this);

  /// The number of articles a guest user needs to read before an
  /// interstitial ad is shown.
  final int guestArticlesToReadBeforeShowingInterstitialAds;

  /// The number of articles a standard user needs to read before an
  /// interstitial ad is shown.
  final int standardUserArticlesToReadBeforeShowingInterstitialAds;

  /// The number of articles a premium user needs to read before an
  /// interstitial ad is shown.
  final int premiumUserArticlesToReadBeforeShowingInterstitialAds;

  @override
  List<Object> get props => [
    guestArticlesToReadBeforeShowingInterstitialAds,
    standardUserArticlesToReadBeforeShowingInterstitialAds,
    premiumUserArticlesToReadBeforeShowingInterstitialAds,
  ];

  /// Creates a copy of this [ArticleInterstitialAdFrequencyConfig] but with
  /// the given fields replaced with the new values.
  ArticleInterstitialAdFrequencyConfig copyWith({
    int? guestArticlesToReadBeforeShowingInterstitialAds,
    int? standardUserArticlesToReadBeforeShowingInterstitialAds,
    int? premiumUserArticlesToReadBeforeShowingInterstitialAds,
  }) {
    return ArticleInterstitialAdFrequencyConfig(
      guestArticlesToReadBeforeShowingInterstitialAds:
          guestArticlesToReadBeforeShowingInterstitialAds ??
          this.guestArticlesToReadBeforeShowingInterstitialAds,
      standardUserArticlesToReadBeforeShowingInterstitialAds:
          standardUserArticlesToReadBeforeShowingInterstitialAds ??
          this.standardUserArticlesToReadBeforeShowingInterstitialAds,
      premiumUserArticlesToReadBeforeShowingInterstitialAds:
          premiumUserArticlesToReadBeforeShowingInterstitialAds ??
          this.premiumUserArticlesToReadBeforeShowingInterstitialAds,
    );
  }
}
