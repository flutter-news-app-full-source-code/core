import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'local_interstitial_ad.g.dart';

/// {@template local_interstitial_ad}
/// Defines a custom interstitial ad that can be served locally.
///
/// Interstitial ads are full-screen advertisements, typically with an image
/// and a target URL, that appear between content transitions.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class LocalInterstitialAd extends FeedItem {
  /// {@macro local_interstitial_ad}
  const LocalInterstitialAd({
    required this.id,
    required this.imageUrl,
    required this.targetUrl,
  }) : super(type: 'localInterstitialAd');

  /// Creates a [LocalInterstitialAd] from JSON data.
  factory LocalInterstitialAd.fromJson(Map<String, dynamic> json) =>
      _$LocalInterstitialAdFromJson(json);

  /// Unique identifier for the local interstitial ad.
  final String id;

  /// The URL of the image for the local interstitial ad.
  final String imageUrl;

  /// The URL to navigate to when the local interstitial ad is clicked.
  final String targetUrl;


  Map<String, dynamic> toJson() {
    final json = _$LocalInterstitialAdToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    imageUrl,
    targetUrl,
    type,
  ];

  /// Creates a copy of this [LocalInterstitialAd] but with the given fields
  /// replaced with the new values.
  LocalInterstitialAd copyWith({
    String? id,
    String? imageUrl,
    String? targetUrl,
  }) {
    return LocalInterstitialAd(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
    );
  }
}
