import 'package:ht_shared/src/models/core/feed_item.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'ad.g.dart';

/// {@template ad_type}
/// Defines the visual format or type of an advertisement in the feed.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum AdType {
  /// A banner advertisement, typically a rectangular image.
  banner,

  /// A native advertisement, designed to blend seamlessly with the feed content.
  native,

  /// A video advertisement.
  video,

  /// A full-screen interstitial advertisement.
  interstitial,
}

/// {@template ad_placement}
/// Defines specific, known locations or contexts where an ad might appear.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum AdPlacement {
  /// A standard banner ad placed inline within the main feed.
  feedInlineStandardBanner,

  /// A native ad designed to blend with content, placed inline within the main
  /// feed.
  feedInlineNativeBanner,
}

/// {@template ad}
/// Represents an advertisement item that can appear in the feed.
/// {@endtemplate}
@immutable
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class Ad extends FeedItem {
  /// {@macro ad}
  Ad({
    required this.imageUrl,
    required this.targetUrl,
    required this.adType,
    this.placement,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'ad');

  /// Factory method to create an [Ad] instance from a JSON map.
  factory Ad.fromJson(Map<String, dynamic> json) => _$AdFromJson(json);

  /// Unique identifier for the ad.
  final String id;

  /// The URL of the image or creative for the ad.
  final String imageUrl;

  /// The URL to navigate to when the ad is clicked.
  final String targetUrl;

  /// The type of the ad, indicating its visual format.
  /// Will be null if an unknown value is encountered during deserialization.

  final AdType? adType;

  /// An optional identifier indicating the intended placement or slot
  /// for this ad in the UI.
  final AdPlacement? placement;

  /// Converts this [Ad] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$AdToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  List<Object?> get props => [
        id,
        imageUrl,
        targetUrl,
        adType,
        placement,
        type,
      ];

  /// Creates a new [Ad] with updated properties.
  /// Use this to modify an [Ad] without changing the original instance.
  Ad copyWith({
    String? id,
    String? imageUrl,
    String? targetUrl,
    AdType? adType,
    AdPlacement? placement,
  }) {
    return Ad(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
      adType: adType ?? this.adType,
      placement: placement ?? this.placement,
    );
  }
}
