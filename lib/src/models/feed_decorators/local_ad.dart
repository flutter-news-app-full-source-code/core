import 'package:core/core.dart';
import 'package:meta/meta.dart';

/// {@template local_ad}
/// An abstract base class for all local ad types.
///
/// This class acts as a router for deserializing specific local ad types
/// (e.g., native, banner, interstitial, video) based on their `adType` field.
/// Concrete implementations must provide their own `toJson` method.
/// {@endtemplate}
@immutable
abstract class LocalAd extends FeedItem {
  /// {@macro local_ad}
  const LocalAd({required this.adType}) : super(type: 'localAd');

  /// Factory method to create a [LocalAd] instance from a JSON map.
  ///
  /// This factory uses the `adType` field in the JSON map to dispatch to the
  /// correct concrete `fromJson` constructor for each local ad type.
  ///
  /// Throws [FormatException] if the `adType` field is missing or unknown.
  factory LocalAd.fromJson(Map<String, dynamic> json) {
    final adType = json['adType'] as String?;
    if (adType == null) {
      throw const FormatException('Missing "adType" field in LocalAd JSON.');
    }

    switch (adType) {
      case 'native':
        return LocalNativeAd.fromJson(json);
      case 'banner':
        return LocalBannerAd.fromJson(json);
      case 'interstitial':
        return LocalInterstitialAd.fromJson(json);
      case 'video':
        return LocalVideoAd.fromJson(json);
      default:
        throw FormatException('Unknown LocalAds type: $adType');
    }
  }

  /// The type of the ad (e.g., banner, native, interstitial, video).
  final String adType;

  @override
  List<Object?> get props => [adType, type];
}
