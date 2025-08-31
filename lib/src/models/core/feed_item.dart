import 'package:core/core.dart';
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
      case 'callToAction':
        return CallToActionItem.fromJson(json);
      case 'localAd':
        return LocalAd.fromJson(json);
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

  /// Static factory method to serialize a [FeedItem] instance to a JSON map.
  ///
  /// This factory uses the `type` field of the provided [item] to dispatch
  /// to the correct concrete `toJson` method.
  ///
  /// Throws [FormatException] if the `type` field is missing or unknown.
  static Map<String, dynamic> toJson(FeedItem item) {
    switch (item.type) {
      case 'headline':
        final headlineItem = item as Headline;
        return headlineItem.toJson();
      case 'topic':
        final topicItem = item as Topic;
        return topicItem.toJson();
      case 'source':
        final sourceItem = item as Source;
        return sourceItem.toJson();
      case 'country':
        final countryItem = item as Country;
        return countryItem.toJson();
      case 'callToAction':
        final callToActionItem = item as CallToActionItem;
        return callToActionItem.toJson();
      case 'localAd':
        final localAdItem = item as LocalAd;
        return LocalAd.toJson(localAdItem);
      case 'contentCollection':
        // For ContentCollectionItem, we need to know the generic type T
        // to call its toJson method correctly.
        // This requires a runtime type check and casting.
        if (item is ContentCollectionItem<Topic>) {
          return item.toJson((topic) => topic.toJson());
        } else if (item is ContentCollectionItem<Source>) {
          return item.toJson((source) => source.toJson());
        } else if (item is ContentCollectionItem<Country>) {
          return item.toJson((country) => country.toJson());
        }
        throw FormatException(
          'Unknown ContentCollectionItem generic type: ${item.runtimeType}',
        );
      default:
        throw FormatException('Unknown FeedItem type for toJson: ${item.type}');
    }
  }

  /// The type of the feed item, used as a discriminator for deserialization.
  final String type;

  @override
  List<Object?> get props => [type];
}
