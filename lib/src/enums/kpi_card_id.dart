import 'package:json_annotation/json_annotation.dart';

/// {@template kpi_card_id}
/// Defines the unique, type-safe identifiers for each KPI card available on
/// the dashboard.
///
/// Each ID corresponds to a specific metric card on a specific management tab.
/// {@endtemplate}
@JsonEnum()
enum KpiCardId {
  // --- Users Management Page ---
  /// KPI card for total registered users.
  @JsonValue('users_total_registered')
  usersTotalRegistered,

  /// KPI card for new user registrations.
  @JsonValue('users_new_registrations')
  usersNewRegistrations,

  /// KPI card for active users.
  @JsonValue('users_active_users')
  usersActiveUsers,

  // --- Content Management Page ---
  // Headlines Tab
  /// KPI card for total headlines published.
  @JsonValue('content_headlines_total_published')
  contentHeadlinesTotalPublished,

  /// KPI card for total views on headlines.
  @JsonValue('content_headlines_total_views')
  contentHeadlinesTotalViews,

  /// KPI card for total likes on headlines.
  @JsonValue('content_headlines_total_likes')
  contentHeadlinesTotalLikes,

  // Sources Tab
  /// KPI card for total unique sources.
  @JsonValue('content_sources_total_sources')
  contentSourcesTotalSources,

  /// KPI card for new sources added.
  @JsonValue('content_sources_new_sources')
  contentSourcesNewSources,

  /// KPI card for total followers across all sources.
  @JsonValue('content_sources_total_followers')
  contentSourcesTotalFollowers,

  // Topics Tab
  /// KPI card for total unique topics.
  @JsonValue('content_topics_total_topics')
  contentTopicsTotalTopics,

  /// KPI card for new topics added.
  @JsonValue('content_topics_new_topics')
  contentTopicsNewTopics,

  /// KPI card for total followers across all topics.
  @JsonValue('content_topics_total_followers')
  contentTopicsTotalFollowers,

  // --- Engagements Management Page ---
  // Engagements Tab (Reactions & Comments)
  /// KPI card for total reactions.
  @JsonValue('engagements_total_reactions')
  engagementsTotalReactions,

  /// KPI card for total comments.
  @JsonValue('engagements_total_comments')
  engagementsTotalComments,

  /// KPI card for average engagement rate.
  @JsonValue('engagements_average_engagement_rate')
  engagementsAverageEngagementRate,

  // Reports Tab
  /// KPI card for reports pending review.
  @JsonValue('engagements_reports_pending')
  engagementsReportsPending,

  /// KPI card for resolved reports.
  @JsonValue('engagements_reports_resolved')
  engagementsReportsResolved,

  /// KPI card for average report resolution time.
  @JsonValue('engagements_reports_average_resolution_time')
  engagementsReportsAverageResolutionTime,

  // App Reviews Tab
  /// KPI card for total app review feedback submissions.
  @JsonValue('engagements_app_reviews_total_feedback')
  engagementsAppReviewsTotalFeedback,

  /// KPI card for positive feedback submissions.
  @JsonValue('engagements_app_reviews_positive_feedback')
  engagementsAppReviewsPositiveFeedback,

  /// KPI card for native store review requests made.
  @JsonValue('engagements_app_reviews_store_requests')
  engagementsAppReviewsStoreRequests,

  // --- Rewards Management Page ---
  /// KPI card for the total number of ads watched to earn rewards.
  @JsonValue('rewards_ads_watched_total')
  rewardsAdsWatchedTotal,

  /// KPI card for the number of users with currently active rewards.
  @JsonValue('rewards_active_users_count')
  rewardsActiveUsersCount,
}
