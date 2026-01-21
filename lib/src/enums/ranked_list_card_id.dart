import 'package:json_annotation/json_annotation.dart';

/// {@template ranked_list_card_id}
/// Defines the unique, type-safe identifiers for each "Top N" ranked list
/// card available on the dashboard, intended for the main overview page.
/// {@endtemplate}
@JsonEnum()
enum RankedListCardId {
  /// Ranked list for most viewed headlines.
  overviewHeadlinesMostViewed,

  /// Ranked list for most liked headlines.
  overviewHeadlinesMostLiked,

  /// Ranked list for most followed sources.
  overviewSourcesMostFollowed,

  /// Ranked list for most followed topics.
  overviewTopicsMostFollowed,
}
