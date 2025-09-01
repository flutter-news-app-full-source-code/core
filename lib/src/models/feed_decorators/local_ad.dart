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
        throw FormatException('Unknown LocalAd type: $adType');
    }
  }

  /// Static factory method to serialize a [LocalAd] instance to a JSON map.
  ///
  /// This factory uses the `adType` field of the provided [item] to dispatch
  /// to the correct concrete `toJson` method.
  ///
  /// Throws [FormatException] if the `adType` field is missing or unknown.
  static Map<String, dynamic> toJson(LocalAd item) {
    switch (item.adType) {
      case 'native':
        final nativeAdItem = item as LocalNativeAd;
        return nativeAdItem.toJson();
      case 'banner':
        final bannerAdItem = item as LocalBannerAd;
        return bannerAdItem.toJson();
      case 'interstitial':
        final interstitialAdItem = item as LocalInterstitialAd;
        return interstitialAdItem.toJson();
      case 'video':
        final videoAdItem = item as LocalVideoAd;
        return videoAdItem.toJson();
      default:
        throw FormatException(
          'Unknown LocalAd type for toJson: ${item.adType}',
        );
    }
  }

  /// The type of the ad (e.g., banner, native, interstitial, video).
  final String adType;

  /// A unique identifier for the local ad instance, typically a UUID.
  String get id;

  @override
  List<Object?> get props => [adType, type];
}
