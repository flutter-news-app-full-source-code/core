import 'package:equatable/equatable.dart';
import 'package:ht_shared/ht_shared.dart'
    show Category, Country, Headline, Source;
import 'package:ht_shared/src/models/feed/feed_item.dart';
import 'package:ht_shared/src/models/feed/feed_item_action.dart';
import 'package:ht_shared/src/models/feed/suggested_content_display_type.dart';
import 'package:ht_shared/src/utils/json_converters.dart';
import 'package:uuid/uuid.dart';

/// {@template suggested_content}
/// A generic model for suggested items that can appear in the feed.
///
/// This item can contain a list of various content types (e.g., [Headline],
/// [Category], [Source], [Country]), allowing for flexible suggestions.
/// The [displayType] field specifies how this suggestion block should be
/// visually presented in the UI.
/// {@endtemplate}
class SuggestedContent extends FeedItem {
  /// {@macro suggested_content}
  SuggestedContent({
    required this.displayType,
    required this.items,
    required super.action, // Refactored to super.action
    this.title,
    this.description,
    String? id,
  })  : id = id ?? const Uuid().v4(),
        super(type: 'suggested_content'); // Removed action from super constructor

  /// Factory method to create a [SuggestedContent] instance from a JSON map.
  factory SuggestedContent.fromJson(Map<String, dynamic> json) {
    return SuggestedContent(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      displayType: suggestedContentDisplayTypeFromJson(
        json['displayType'] as String,
      ),
      items: (json['items'] as List<dynamic>)
          .map((e) {
            final itemMap = e as Map<String, dynamic>;
            final itemType = itemMap['type'] as String;
            switch (itemType) {
              case 'headline':
                return Headline.fromJson(itemMap);
              case 'category':
                return Category.fromJson(itemMap);
              case 'source':
                return Source.fromJson(itemMap);
              case 'country':
                return Country.fromJson(itemMap);
              default:
                throw FormatException('Unknown item type: $itemType');
            }
          })
          .toList(),
      action: FeedItemAction.fromJson(json['action'] as Map<String, dynamic>),
    );
  }

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

  /// Converts this [SuggestedContent] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'id': id,
      'title': title,
      'description': description,
      'displayType': suggestedContentDisplayTypeToJson(displayType),
      'items': items.map((e) {
        if (e is Headline) {
          return e.toJson();
        } else if (e is Category) {
          return e.toJson();
        } else if (e is Source) {
          return e.toJson();
        } else if (e is Country) {
          return e.toJson();
        }
        throw FormatException('Unknown item type for serialization: ${e.runtimeType}');
      }).toList(),
      'action': action.toJson(),
      'type': type, // Inherited from FeedItem
    };
    return json..removeWhere((key, value) => value == null);
  }

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
