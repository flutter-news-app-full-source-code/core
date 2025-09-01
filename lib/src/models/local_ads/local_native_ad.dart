import 'package:core/core.dart';
import 'package:core/src/enums/enums.dart';
import 'package:core/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'local_native_ad.g.dart';

/// {@template local_native_ad}
/// Defines a custom native ad that can be served locally.
///
/// Native ads are designed to blend seamlessly with the feed content,
/// typically including a title, subtitle, image, and a target URL.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class LocalNativeAd extends LocalAd {
  /// {@macro local_native_ad}
  const LocalNativeAd({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.targetUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  }) : super(adType: 'native');

  /// Creates a [LocalNativeAd] from JSON data.
  factory LocalNativeAd.fromJson(Map<String, dynamic> json) =>
      _$LocalNativeAdFromJson(json);

  /// Unique identifier for the local native ad.
  @override
  final String id;

  /// The main title or headline of the local native ad.
  final String title;

  /// The subtitle or description of the local native ad, providing more context.
  final String subtitle;

  /// The URL of the image associated with the local native ad.
  final String imageUrl;

  /// The URL to navigate to when the local native ad is clicked.
  final String targetUrl;

  /// The creation timestamp of the local native ad.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the local native ad.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the local native ad.
  final ContentStatus status;

  Map<String, dynamic> toJson() {
    final json = _$LocalNativeAdToJson(this);
    json['adType'] = adType;
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    title,
    subtitle,
    imageUrl,
    targetUrl,
    createdAt,
    updatedAt,
    status,
    adType,
    type,
  ];

  /// Creates a copy of this [LocalNativeAd] but with the given fields replaced with
  /// the new values.
  LocalNativeAd copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? imageUrl,
    String? targetUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return LocalNativeAd(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
