import 'package:equatable/equatable.dart';
import 'package:ht_shared/ht_shared.dart' show AppConfig;
import 'package:ht_shared/src/models/models.dart' show AppConfig;
import 'package:ht_shared/src/models/remote_config/app_config.dart'
    show AppConfig;
import 'package:ht_shared/src/models/remote_config/remote_config.dart'
    show AppConfig;
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'ad_config.g.dart';

/// {@template ad_config}
/// Defines configuration settings related to ad injection and display,
/// tiered by user role.
///
/// This model is part of the overall [AppConfig] and is used to control
/// how ads are integrated into the application's feed or other content areas
/// based on the user's authentication status or subscription level.
///
/// **Ad Injection Logic Explained:**
///
/// - __`AdFrequency`__: This determines *how often* an ad *can* be injected relative to the number of primary content items. For example, an `adFrequency` of 5 means an ad *could* be placed after every 5 primary items. It sets the overall density of ads in the feed.
///
/// - __`AdPlacementInterval`__: This sets a *minimum number of primary items* that must appear *before* the *first* ad is placed. It prevents ads from appearing right at the very beginning of the feed, ensuring the user sees some initial content first.
///
/// So, `AdFrequency` controls the spacing of ads *throughout* the feed (after the initial interval), while `AdPlacementInterval` controls where the *very first* ad can appear.
///
/// Think of it like this:
///
/// - `AdPlacementInterval` = 3: No ads will appear in the first 3 primary items.
/// - `AdFrequency` = 5: After the first 3 items, an ad *could* appear after item #5, then potentially after item #10, #15, etc.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AdConfig extends Equatable {
  /// {@macro ad_config}
  const AdConfig({
    required this.guestAdFrequency,
    required this.guestAdPlacementInterval,
    required this.authenticatedAdFrequency,
    required this.authenticatedAdPlacementInterval,
    required this.premiumAdFrequency,
    required this.premiumAdPlacementInterval,
    this.guestArticlesToReadBeforeShowingInterstitialAds = 5,
    this.standardUserArticlesToReadBeforeShowingInterstitialAds = 5,
    this.premiumUserArticlesToReadBeforeShowingInterstitialAds = 5,
  });

  /// Factory method to create an [AdConfig] instance from a JSON map.
  factory AdConfig.fromJson(Map<String, dynamic> json) =>
      _$AdConfigFromJson(json);

  /// See class documentation for details on AdFrequency.
  final int guestAdFrequency;

  /// See class documentation for details on AdPlacementInterval.
  final int guestAdPlacementInterval;

  /// See class documentation for details on AdFrequency.
  final int authenticatedAdFrequency;

  /// See class documentation for details on AdPlacementInterval.
  final int authenticatedAdPlacementInterval;

  /// See class documentation for details on AdFrequency.
  final int premiumAdFrequency;

  /// See class documentation for details on AdPlacementInterval.
  final int premiumAdPlacementInterval;

  /// The number of articles a guest user needs to read before an
  /// interstitial ad is shown.
  final int guestArticlesToReadBeforeShowingInterstitialAds;

  /// The number of articles a standard user needs to read before an
  /// interstitial ad is shown.
  final int standardUserArticlesToReadBeforeShowingInterstitialAds;

  /// The number of articles a premium user needs to read before an
  /// interstitial ad is shown.
  final int premiumUserArticlesToReadBeforeShowingInterstitialAds;

  /// Converts this [AdConfig] instance to a JSON map.
  Map<String, dynamic> toJson() => _$AdConfigToJson(this);

  /// Creates a copy of this [AdConfig] but with the given fields replaced
  /// with the new values.
  AdConfig copyWith({
    int? guestAdFrequency,
    int? guestAdPlacementInterval,
    int? authenticatedAdFrequency,
    int? authenticatedAdPlacementInterval,
    int? premiumAdFrequency,
    int? premiumAdPlacementInterval,
    int? guestArticlesToReadBeforeShowingInterstitialAds,
    int? standardUserArticlesToReadBeforeShowingInterstitialAds,
    int? premiumUserArticlesToReadBeforeShowingInterstitialAds,
  }) {
    return AdConfig(
      guestAdFrequency: guestAdFrequency ?? this.guestAdFrequency,
      guestAdPlacementInterval:
          guestAdPlacementInterval ?? this.guestAdPlacementInterval,
      authenticatedAdFrequency:
          authenticatedAdFrequency ?? this.authenticatedAdFrequency,
      authenticatedAdPlacementInterval:
          authenticatedAdPlacementInterval ??
          this.authenticatedAdPlacementInterval,
      premiumAdFrequency: premiumAdFrequency ?? this.premiumAdFrequency,
      premiumAdPlacementInterval:
          premiumAdPlacementInterval ?? this.premiumAdPlacementInterval,
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

  @override
  List<Object> get props => [
    guestAdFrequency,
    guestAdPlacementInterval,
    authenticatedAdFrequency,
    authenticatedAdPlacementInterval,
    premiumAdFrequency,
    premiumAdPlacementInterval,
    guestArticlesToReadBeforeShowingInterstitialAds,
    standardUserArticlesToReadBeforeShowingInterstitialAds,
    premiumUserArticlesToReadBeforeShowingInterstitialAds,
  ];
}
