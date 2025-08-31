import 'package:core/core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'local_banner_ad.g.dart';

/// {@template local_banner_ad}
/// Defines a custom banner ad that can be served locally.
///
/// Banner ads are typically rectangular images with a target URL.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class LocalBannerAd extends LocalAd {
  /// {@macro local_banner_ad}
  const LocalBannerAd({
    required this.id,
    required this.imageUrl,
    required this.targetUrl,
  }) : super(adType: 'banner');

  /// Creates a [LocalBannerAd] from JSON data.
  factory LocalBannerAd.fromJson(Map<String, dynamic> json) =>
      _$LocalBannerAdFromJson(json);

  /// Unique identifier for the local banner ad.
  final String id;

  /// The URL of the image for the local banner ad.
  final String imageUrl;

  /// The URL to navigate to when the local banner ad is clicked.
  final String targetUrl;

  Map<String, dynamic> toJson() {
    final json = _$LocalBannerAdToJson(this);
    json['adType'] = adType;
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [id, imageUrl, targetUrl, adType, type];

  /// Creates a copy of this [LocalBannerAd] but with the given fields replaced with
  /// the new values.
  LocalBannerAd copyWith({String? id, String? imageUrl, String? targetUrl}) {
    return LocalBannerAd(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
    );
  }
}
