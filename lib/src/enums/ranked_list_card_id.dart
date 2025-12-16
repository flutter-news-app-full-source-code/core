import 'package:json_annotation/json_annotation.dart';

/// {@template ranked_list_card_id}
/// Defines the unique, type-safe identifiers for each "Top N" ranked list
/// card available on the dashboard, intended for the main overview page.
/// {@endtemplate}
@JsonEnum()
enum RankedListCardId {
  /// Ranked list for most viewed headlines.
  @JsonValue('overview_headlines_most_viewed')
  overviewHeadlinesMostViewed,

  /// Ranked list for most liked headlines.
  @JsonValue('overview_headlines_most_liked')
  overviewHeadlinesMostLiked,

  /// Ranked list for most followed sources.
  @JsonValue('overview_sources_most_followed')
  overviewSourcesMostFollowed,

  /// Ranked list for most followed topics.
  @JsonValue('overview_topics_most_followed')
  overviewTopicsMostFollowed,
}
