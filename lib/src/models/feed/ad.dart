import 'package:ht_shared/src/models/feed/ad_placement.dart';
import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:ht_shared/src/utils/json_converters.dart';
import 'package:uuid/uuid.dart';

/// {@template ad_type}
/// Defines the visual format or type of an advertisement in the feed.
/// {@endtemplate}
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

/// {@template ad}
/// Represents an advertisement item that can appear in the feed.
/// {@endtemplate}
class Ad extends FeedItem {
  /// {@macro ad}
  Ad({
    required this.imageUrl,
    required this.targetUrl,
    required this.adType,
    required super.action, // Refactored to super.action
    this.placement,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'ad'); // Removed action from super constructor

  /// Factory method to create an [Ad] instance from a JSON map.
  factory Ad.fromJson(Map<String, dynamic> json) {
    return Ad(
      id: json['id'] as String?,
      imageUrl: json['imageUrl'] as String,
      targetUrl: json['targetUrl'] as String,
      adType: adTypeFromJson(json['adType'] as String),
      placement: json['placement'] == null
          ? null
          : adPlacementFromJson(json['placement'] as String),
      action: FeedItemAction.fromJson(json['action'] as Map<String, dynamic>),
    );
  }

  /// Unique identifier for the ad.
  final String id;

  /// The URL of the image or creative for the ad.
  final String imageUrl;

  /// The URL to navigate to when the ad is clicked.
  final String targetUrl;

  /// The type of the ad, indicating its visual format.
  final AdType adType;

  /// An optional identifier indicating the intended placement or slot
  /// for this ad in the UI.
  final AdPlacement? placement;

  /// Converts this [Ad] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'imageUrl': imageUrl,
      'targetUrl': targetUrl,
      'adType': adTypeToJson(adType),
      'placement': placement == null ? null : adPlacementToJson(placement!),
      'action': action.toJson(),
      'type': type, // Inherited from FeedItem
    };
    return json..removeWhere((key, value) => value == null);
  }

  @override
  List<Object?> get props => [
        id,
        imageUrl,
        targetUrl,
        adType,
        placement,
        type,
        action,
      ];

  /// Creates a new [Ad] with updated properties.
  /// Use this to modify an [Ad] without changing the original instance.
  Ad copyWith({
    String? id,
    String? imageUrl,
    String? targetUrl,
    AdType? adType,
    AdPlacement? placement,
    FeedItemAction? action,
  }) {
    return Ad(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      targetUrl: targetUrl ?? this.targetUrl,
      adType: adType ?? this.adType,
      placement: placement ?? this.placement,
      action: action ?? this.action,
    );
  }
}
