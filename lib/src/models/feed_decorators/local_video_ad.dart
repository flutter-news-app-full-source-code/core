import 'package:core/core.dart';
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
class LocalVideoAd extends FeedItem {
  /// {@macro local_video_ad}
  const LocalVideoAd({
    required this.id,
    required this.videoUrl,
    required this.targetUrl,
  }) : super(type: 'localVideoAd');

  /// Creates a [LocalVideoAd] from JSON data.
  factory LocalVideoAd.fromJson(Map<String, dynamic> json) =>
      _$LocalVideoAdFromJson(json);

  /// Unique identifier for the local video ad.
  final String id;

  /// The URL of the video content for the local video ad.
  final String videoUrl;

  /// The URL to navigate to when the local video ad is clicked.
  final String targetUrl;

  Map<String, dynamic> toJson() {
    final json = _$LocalVideoAdToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [id, videoUrl, targetUrl, type];

  /// Creates a copy of this [LocalVideoAd] but with the given fields
  /// replaced with the new values.
  LocalVideoAd copyWith({String? id, String? videoUrl, String? targetUrl}) {
    return LocalVideoAd(
      id: id ?? this.id,
      videoUrl: videoUrl ?? this.videoUrl,
      targetUrl: targetUrl ?? this.targetUrl,
    );
  }
}
