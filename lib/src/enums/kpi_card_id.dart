import 'package:json_annotation/json_annotation.dart';

/// {@template kpi_card_id}
/// Defines the unique, type-safe identifiers for each KPI card available on
/// the dashboard.
///
/// Each ID corresponds to a specific metric card on a specific management tab.
/// {@endtemplate}
@JsonEnum(fieldRename: FieldRename.snake)
enum KpiCardId {
  // --- Users Management Page ---
  /// KPI card for total registered users.
  users_total_registered,

  /// KPI card for new user registrations.
  users_new_registrations,

  /// KPI card for active users.
  users_active_users,

  // --- Content Management Page ---
  // Headlines Tab
  /// KPI card for total headlines published.
  content_headlines_total_published,

  /// KPI card for total views on headlines.
  content_headlines_total_views,

  /// KPI card for total likes on headlines.
  content_headlines_total_likes,

  // Sources Tab
  /// KPI card for total unique sources.
  content_sources_total_sources,

  /// KPI card for new sources added.
  content_sources_new_sources,

  /// KPI card for total followers across all sources.
  content_sources_total_followers,

  // Topics Tab
  /// KPI card for total unique topics.
  content_topics_total_topics,

  /// KPI card for new topics added.
  content_topics_new_topics,

  /// KPI card for total followers across all topics.
  content_topics_total_followers,

  // --- Engagements Management Page ---
  // Engagements Tab (Reactions & Comments)
  /// KPI card for total reactions.
  engagements_total_reactions,

  /// KPI card for total comments.
  engagements_total_comments,

  // Reports Tab
  /// KPI card for reports pending review.
  engagements_reports_pending,

  /// KPI card for resolved reports.
  engagements_reports_resolved,
}
