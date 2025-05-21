import 'package:ht_shared/ht_shared.dart' show SuggestedContent;
import 'package:ht_shared/src/models/feed/feed.dart' show SuggestedContent;
import 'package:ht_shared/src/models/feed/suggested_content.dart' show SuggestedContent;
import 'package:ht_shared/src/models/models.dart' show SuggestedContent;
import 'package:json_annotation/json_annotation.dart';

/// {@template suggested_content_display_type}
/// Defines the visual presentation or layout style for a
/// [SuggestedContent] block within the application feed.
///
/// This enum guides the UI on how to render the list of items
/// contained within a SuggestedContent model.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum SuggestedContentDisplayType {
  /// Displays content items in a horizontally scrollable list of cards.
  horizontalCardList,

  /// Displays content items in a vertically stacked list of cards.
  verticalCardList,

  /// Displays content items in a grid layout.
  grid,

  /// Displays a single, prominent content item as a promotional card.
  singlePromotionalCard,

  /// Displays content items as a simple list of text entries.
  textList,
}
