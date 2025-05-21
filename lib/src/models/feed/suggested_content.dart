import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/suggested_content_display_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

import 'package:ht_shared/src/models/feed/feed_item_action.dart'
    show FeedItemAction, feedItemActionFromJson, feedItemActionToJson;

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
    required this.items,
    this.title,
    this.description,
    String? id,
    required super.action, // Add action to constructor
  }) : id = id ?? const Uuid().v4(),
       super(type: 'suggested_content');

  /// Factory method to create a [SuggestedContent] instance from a JSON map.
  ///
  /// The `fromJsonT` parameter is a function that converts the JSON
  /// representation of an item of type [T] to an instance of [T].
  factory SuggestedContent.fromJson(Map<String, dynamic> json) =>
      _$SuggestedContentFromJson(json);

  /// Unique identifier for the suggested content block.
  final String id;

  /// An optional title for the suggestion block (e.g., "You might like...").
  final String? title;

  /// An optional description for the suggestion block.
  final String? description;

  /// The visual presentation or layout style for this suggestion block.
  final SuggestedContentDisplayType displayType;

  /// The list of actual suggested items. These can be of various types
  /// (e.g., [Headline], [Category], [Source], [Country]).
  final List<dynamic> items;

  /// The action to be performed when this feed item is interacted with.
  @JsonKey(fromJson: feedItemActionFromJson, toJson: feedItemActionToJson)
  @override
  late final FeedItemAction action;

  /// Converts this [SuggestedContent] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$SuggestedContentToJson(this);

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    displayType,
    items,
    type,
    action,
  ];

  /// Creates a new [SuggestedContent] with updated properties.
  /// Use this to modify a [SuggestedContent] without changing the original
  /// instance.
  SuggestedContent copyWith({
    String? id,
    String? title,
    String? description,
    SuggestedContentDisplayType? displayType,
    List<dynamic>? items,
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
