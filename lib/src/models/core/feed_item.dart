import 'package:core/core.dart';
import 'package:core/src/models/feed_decorators/call_to_action_item.dart';
import 'package:core/src/models/feed_decorators/content_collection_item.dart';
import 'package:equatable/equatable.dart';

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
/// {@endtemplate}
abstract class FeedItem extends Equatable {
  /// {@macro feed_item}
  const FeedItem({required this.type});

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
    switch (type) {
      case 'headline':
        return Headline.fromJson(json);
      case 'topic':
        return Topic.fromJson(json);
      case 'source':
        return Source.fromJson(json);
      case 'country':
        return Country.fromJson(json);
      case 'ad':
        return Ad.fromJson(json);
      case 'callToAction':
        return CallToActionItem.fromJson(json);
      case 'contentCollection':
        final contentType = json['contentType'] as String?;
        if (contentType == null) {
          throw const FormatException(
            'Missing "contentType" for contentCollection.',
          );
        }
        switch (contentType) {
          case 'topic':
            return ContentCollectionItem<Topic>.fromJson(
              json,
              (json) => Topic.fromJson(json as Map<String, dynamic>),
            );
          case 'source':
            return ContentCollectionItem<Source>.fromJson(
              json,
              (json) => Source.fromJson(json as Map<String, dynamic>),
            );
          case 'country':
            return ContentCollectionItem<Country>.fromJson(
              json,
              (json) => Country.fromJson(json as Map<String, dynamic>),
            );
          default:
            throw FormatException('Unknown contentType: $contentType');
        }
      default:
        throw FormatException('Unknown FeedItem type: $type');
    }
  }

  /// The type of the feed item, used as a discriminator for deserialization.
  final String type;

  /// Converts this [FeedItem] instance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [type];
}
