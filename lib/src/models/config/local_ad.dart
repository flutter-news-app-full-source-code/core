import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'local_ad.g.dart';

/// {@template local_ad}
/// Defines a single custom ad that can be served locally.
/// Includes title and subtitle to mimic native ads.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class LocalAd extends Equatable {
  /// {@macro local_ad}
  const LocalAd({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.targetUrl,
    required this.adType,
  });

  /// Creates a [LocalAd] from JSON data.
  factory LocalAd.fromJson(Map<String, dynamic> json) =>
      _$LocalAdFromJson(json);

  /// Converts this [LocalAd] instance to JSON data.
  Map<String, dynamic> toJson() => _$LocalAdToJson(this);

  /// Unique identifier for the local ad.
  final String id;

  /// The title of the local ad.
  final String title;

  /// The subtitle or description of the local ad.
  final String subtitle;

  /// The URL of the image for the local ad.
  final String imageUrl;

  /// The URL to navigate to when the local ad is clicked.
  final String targetUrl;

  /// The type of the ad (e.g., banner, native, interstitial).
  final AdType adType;

  @override
  List<Object?> get props => [id, title, subtitle, imageUrl, targetUrl, adType];

  /// Creates a copy of this [LocalAd] but with the given fields replaced with
  /// the new values.
  LocalAd copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? imageUrl,
    String? targetUrl,
    AdType? adType,
  }) {
    return LocalAd(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
      adType: adType ?? this.adType,
    );
  }
}
