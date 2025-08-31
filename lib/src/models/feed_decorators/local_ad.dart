import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'local_ad.g.dart';

/// {@template local_ad}
/// An abstract base class for all local ad types.
///
/// This class acts as a router for deserializing specific local ad types
/// (e.g., native, banner, interstitial, video) based on their `adType` field.
/// Concrete implementations must provide their own `toJson` method.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
abstract class LocalAd extends FeedItem {
  /// {@macro local_ad}
  const LocalAd({
    required this.adType,
  }) : super(type: 'localAd');

  /// Factory method to create a [LocalAd] instance from a JSON map.
  ///
  /// This factory uses the `adType` field in the JSON map to dispatch to the
  /// correct concrete `fromJson` constructor for each local ad type.
  ///
  /// Throws [FormatException] if the `adType` field is missing or unknown.
  factory LocalAd.fromJson(Map<String, dynamic> json) {
    final adTypeString = json['adType'] as String?;
    if (adTypeString == null) {
      throw const FormatException('Missing "adType" field in LocalAd JSON.');
    }

    final adType = $enumDecode(_$AdTypeEnumMap, adTypeString);

    switch (adType) {
      case AdType.native:
        return LocalNativeAd.fromJson(json);
      case AdType.banner:
        return LocalBannerAd.fromJson(json);
      case AdType.interstitial:
        return LocalInterstitialAd.fromJson(json);
      case AdType.video:
        return LocalVideoAd.fromJson(json);
      default:
        throw FormatException('Unknown AdType: $adTypeString');
    }
  }

  /// The type of the ad (e.g., banner, native, interstitial, video).
  final AdType adType;

  /// Converts this [LocalAd] instance to JSON data.
  ///
  /// Concrete subtypes must implement this method.
  @override
  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [adType, type];
}
