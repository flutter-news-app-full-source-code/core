import 'package:ht_shared/ht_shared.dart' show Category, Country, Headline, Source;
import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart'
    show FeedItemAction, feedItemActionFromJson, feedItemActionToJson;
import 'package:ht_shared/src/models/feed/suggested_content_display_type.dart';
import 'package:ht_shared/src/models/models.dart' show Category, Country, Headline, Source;
import 'package:ht_shared/src/models/news/news.dart' show Category, Country, Headline, Source;
// Removed redundant imports for Category, Country, Headline, Source
// as FeedItem itself will handle these.
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'suggested_content.g.dart';

/// {@template suggested_content}
/// A generic model for suggested items that can appear in the feed.
///
/// This item can contain a list of various content types (e.g., [Headline],
/// [Category], [Source], [Country]), allowing for flexible suggestions.
/// The [displayType] field specifies how this suggestion block should be
/// visually presented in the UI.
/// {@endtemplate}
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SuggestedContent extends FeedItem {
  /// {@macro suggested_content}
  SuggestedContent({
    required this.displayType,
    required List<FeedItem> items, // Changed from List<dynamic>
    required FeedItemAction action,
    this.title,
    this.description,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        items = items, // Assign to the new typed field
        action = action,
        super(type: 'suggested_content', action: action);

  /// Factory method to create a [SuggestedContent] instance from a JSON map.
  factory SuggestedContent.fromJson(Map<String, dynamic> json) =>
      _$SuggestedContentFromJson(json);

  /// Unique identifier for the suggested content block.
  final String id;

  /// An optional title for the suggestion block (e.g., "You might like...").
  final String? title;

  /// An optional description for the suggestion block.
  final String? description;

  /// The visual presentation or layout style for this suggestion block.
  /// Will be null if an unknown value is encountered during deserialization.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final SuggestedContentDisplayType? displayType;

  /// The list of actual suggested items. These are [FeedItem] instances.
  @JsonKey(fromJson: _feedItemsFromJson, toJson: _feedItemsToJson)
  final List<FeedItem> items; // Changed from List<dynamic>

  /// The action to be performed when this feed item is interacted with.
  @JsonKey(fromJson: feedItemActionFromJson, toJson: feedItemActionToJson)
  @override
  final FeedItemAction action;

  /// Converts this [SuggestedContent] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final json = _$SuggestedContentToJson(this);
    // The 'type' field is already part of FeedItem and should be
    // handled by its toJson method if _$SuggestedContentToJson doesn't
    // already include it due to inheritance.
    // However, explicitToJson: true should handle this.
    // Let's ensure 'type' is present, as per original logic.
    json['type'] = type;
    return json;
  }

  // Helper functions for custom serialization of List<FeedItem>
  static List<FeedItem> _feedItemsFromJson(List<dynamic> jsonList) => jsonList
      .map((itemJson) => FeedItem.fromJson(itemJson as Map<String, dynamic>))
      .toList();

  static List<Map<String, dynamic>> _feedItemsToJson(List<FeedItem> items) =>
      items.map((item) => item.toJson()).toList();

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        displayType,
        items,
        type, // from FeedItem
        action, // from FeedItem
      ];

  /// Creates a new [SuggestedContent] with updated properties.
  /// Use this to modify a [SuggestedContent] without changing the original
  /// instance.
  SuggestedContent copyWith({
    String? id,
    String? title,
    String? description,
    SuggestedContentDisplayType? displayType,
    List<FeedItem>? items, // Changed from List<dynamic>
    FeedItemAction? action,
  }) {
    return SuggestedContent(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      displayType: displayType ?? this.displayType,
      items: items ?? this.items,
      action: action ?? this.action,
    );
  }
}
