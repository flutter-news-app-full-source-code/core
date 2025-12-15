import 'package:json_annotation/json_annotation.dart';

/// {@template chart_card_id}
/// Defines the unique, type-safe identifiers for each chart card available on
/// the dashboard.
///
/// Each ID corresponds to a specific chart on a specific management tab.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum ChartCardId {
  // --- Users Management Page ---
  /// Chart for new user registrations over time.
  users_registrations_over_time,

  /// Chart for active users over time.
  users_active_users_over_time,

  /// Chart for user role distribution.
  users_role_distribution,

  // --- Content Management Page ---
  // Headlines Tab
  /// Chart for headline views over time.
  content_headlines_views_over_time,

  /// Chart for headline likes over time.
  content_headlines_likes_over_time,

  /// Chart for headline views categorized by topic.
  content_headlines_views_by_topic,

  // Sources Tab
  /// Chart for headlines published by sources over time.
  content_sources_headlines_published_over_time,

  /// Chart for source follower gains over time.
  content_sources_followers_over_time,

  // Topics Tab
  /// Chart for topic follower gains over time.
  content_topics_followers_over_time,

  // --- Engagements Management Page ---
  // Engagements Tab (Reactions & Comments)
  /// Chart for reactions over time.
  engagements_reactions_over_time,

  /// Chart for comments over time.
  engagements_comments_over_time,

  // Reports Tab
  /// Chart for submitted reports over time.
  engagements_reports_submitted_over_time,
}
