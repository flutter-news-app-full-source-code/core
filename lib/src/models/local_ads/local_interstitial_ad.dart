import 'package:core/core.dart';
import 'package:core/src/enums/enums.dart';
import 'package:core/src/utils/utils.dart';
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
class LocalInterstitialAd extends LocalAd {
  /// {@macro local_interstitial_ad}
  const LocalInterstitialAd({
    required this.id,
    required this.imageUrl,
    required this.targetUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  }) : super(adType: 'interstitial');

  /// Creates a [LocalInterstitialAd] from JSON data.
  factory LocalInterstitialAd.fromJson(Map<String, dynamic> json) =>
      _$LocalInterstitialAdFromJson(json);

  /// Unique identifier for the local interstitial ad.
  @override
  final String id;

  /// The URL of the image for the local interstitial ad.
  final String imageUrl;

  /// The URL to navigate to when the local interstitial ad is clicked.
  final String targetUrl;

  /// The creation timestamp of the local interstitial ad.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the local interstitial ad.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the local interstitial ad.
  final ContentStatus status;

  Map<String, dynamic> toJson() {
    final json = _$LocalInterstitialAdToJson(this);
    json['adType'] = adType;
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    imageUrl,
    targetUrl,
    createdAt,
    updatedAt,
    status,
    adType,
    type,
  ];

  /// Creates a copy of this [LocalInterstitialAd] but with the given fields
  /// replaced with the new values.
  LocalInterstitialAd copyWith({
    String? id,
    String? imageUrl,
    String? targetUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return LocalInterstitialAd(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
