import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/core/feed_item_action.dart';
import 'package:ht_shared/src/models/entities/category.dart';
import 'package:ht_shared/src/models/entities/country.dart';
import 'package:ht_shared/src/models/entities/headline.dart';
import 'package:ht_shared/src/models/entities/source.dart';
import 'package:ht_shared/src/models/feed-decorators/ad.dart';
import 'package:ht_shared/src/models/feed-decorators/engagement_content.dart';
import 'package:ht_shared/src/models/feed-decorators/suggested_content.dart';

/// {@template feed_item}
/// An abstract base class for all items that can appear in a mixed content
/// feed.
///
/// This class provides a common interface for serialization and deserialization
/// of different content types (e.g., headlines, ads, suggested content,
/// engagement content) within a single feed.
///
/// The [type] field acts as a discriminator to identify the concrete type
/// of the item during deserialization.
/// The [action] field defines the primary behavior when the item is interacted
/// with (e.g., tapped).
/// {@endtemplate}
abstract class FeedItem extends Equatable {
  /// {@macro feed_item}
  const FeedItem({required this.type, required this.action});

  /// Factory method to create a [FeedItem] instance from a JSON map.
  ///
  /// This factory uses the `type` field in the JSON map to dispatch to the
  /// correct concrete `fromJson` constructor.
  ///
  /// Throws [FormatException] if the `type` field is missing or unknown.
  factory FeedItem.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    if (type == null) {
      throw const FormatException('Missing "type" field in FeedItem JSON.');
    }

    // Dispatch to the correct concrete FeedItem type.
    // The concrete fromJson methods will handle deserializing their own
    // 'action' field, as it's part of their JSON structure.
    switch (type) {
      case 'headline':
        return Headline.fromJson(json);
      case 'category':
        return Category.fromJson(json);
      case 'source':
        return Source.fromJson(json);
      case 'country':
        return Country.fromJson(json);
      case 'ad':
        return Ad.fromJson(json);
      case 'suggested_content':
        return SuggestedContent.fromJson(json);
      case 'engagement_content':
        return EngagementContent.fromJson(json);
      default:
        throw FormatException('Unknown FeedItem type: $type');
    }
  }

  /// The type of the feed item, used as a discriminator for deserialization.
  final String type;

  /// The action to be performed when this feed item is interacted with.
  final FeedItemAction action;

  /// Converts this [FeedItem] instance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [type, action];
}
