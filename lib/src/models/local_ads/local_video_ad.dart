import 'package:core/core.dart';
import 'package:core/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'local_video_ad.g.dart';

/// {@template local_video_ad}
/// Defines a custom video ad that can be served locally.
///
/// Video ads are typically full-screen or in-feed videos with a target URL.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class LocalVideoAd extends LocalAd {
  /// {@macro local_video_ad}
  const LocalVideoAd({
    required this.id,
    required this.videoUrl,
    required this.targetUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  }) : super(adType: 'video');

  /// Creates a [LocalVideoAd] from JSON data.
  factory LocalVideoAd.fromJson(Map<String, dynamic> json) =>
      _$LocalVideoAdFromJson(json);

  /// Unique identifier for the local video ad.
  @override
  final String id;

  /// The URL of the video content for the local video ad.
  final String videoUrl;

  /// The URL to navigate to when the local video ad is clicked.
  final String targetUrl;

  /// The creation timestamp of the local video ad.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The last update timestamp of the local video ad.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The current status of the local video ad.
  final ContentStatus status;

  Map<String, dynamic> toJson() {
    final json = _$LocalVideoAdToJson(this);
    json['adType'] = adType;
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
    id,
    videoUrl,
    targetUrl,
    createdAt,
    updatedAt,
    status,
    adType,
    type,
  ];

  /// Creates a copy of this [LocalVideoAd] but with the given fields
  /// replaced with the new values.
  LocalVideoAd copyWith({
    String? id,
    String? videoUrl,
    String? targetUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    ContentStatus? status,
  }) {
    return LocalVideoAd(
      id: id ?? this.id,
      videoUrl: videoUrl ?? this.videoUrl,
      targetUrl: targetUrl ?? this.targetUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      status: status ?? this.status,
    );
  }
}
