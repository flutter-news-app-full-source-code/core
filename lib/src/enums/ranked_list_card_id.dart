import 'package:json_annotation/json_annotation.dart';

/// {@template ranked_list_card_id}
/// Defines the unique, type-safe identifiers for each "Top N" ranked list
/// card available on the dashboard, intended for the main overview page.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum RankedListCardId {
  /// Ranked list for most viewed headlines.
  overview_headlines_most_viewed,

  /// Ranked list for most liked headlines.
  overview_headlines_most_liked,

  /// Ranked list for most followed sources.
  overview_sources_most_followed,

  /// Ranked list for most followed topics.
  overview_topics_most_followed,
}
