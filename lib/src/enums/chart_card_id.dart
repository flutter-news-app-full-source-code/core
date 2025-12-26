import 'package:json_annotation/json_annotation.dart';

/// {@template chart_card_id}
/// Defines the unique, type-safe identifiers for each chart card available on
/// the dashboard.
///
/// Each ID corresponds to a specific chart on a specific management tab.
/// {@endtemplate}
@JsonEnum()
enum ChartCardId {
  // --- Users Management Page ---
  /// Chart for new user registrations over time.
  @JsonValue('users_registrations_over_time')
  usersRegistrationsOverTime,

  /// Chart for active users over time.
  @JsonValue('users_active_users_over_time')
  usersActiveUsersOverTime,

  /// Chart for user role distribution.
  @JsonValue('users_role_distribution')
  usersRoleDistribution,

  // --- Content Management Page ---
  // Headlines Tab
  /// Chart for headline views over time.
  @JsonValue('content_headlines_views_over_time')
  contentHeadlinesViewsOverTime,

  /// Chart for headline likes over time.
  @JsonValue('content_headlines_likes_over_time')
  contentHeadlinesLikesOverTime,

  /// Chart for headline views categorized by topic.
  @JsonValue('content_headlines_views_by_topic')
  contentHeadlinesViewsByTopic,

  // Sources Tab
  /// Chart for headlines published by sources over time.
  @JsonValue('content_sources_headlines_published_over_time')
  contentSourcesHeadlinesPublishedOverTime,

  /// A bar chart showing the count of news sources categorized by their
  /// ContentStatus (e.g., 'active', 'draft', 'archived'). This provides
  /// insight into the lifecycle and availability of your content sources.
  @JsonValue('content_sources_status_distribution')
  contentSourcesStatusDistribution,

  /// Chart for engagement by source type.
  @JsonValue('content_sources_engagement_by_type')
  contentSourcesEngagementByType,

  // Topics Tab
  /// A bar chart showing the count of headlines categorized by whether they are
  /// marked as 'breaking news' (isBreaking: true) or not. This offers a view
  /// into the volume of urgent vs. regular content.
  @JsonValue('content_headlines_breaking_news_distribution')
  contentHeadlinesBreakingNewsDistribution,

  /// Chart for headlines published per topic over time.
  @JsonValue('content_topics_headlines_published_over_time')
  contentTopicsHeadlinesPublishedOverTime,

  /// Chart for engagement by topic.
  @JsonValue('content_topics_engagement_by_topic')
  contentTopicsEngagementByTopic,

  // --- Engagements Management Page ---
  // Engagements Tab (Reactions & Comments)
  /// Chart for reactions over time.
  @JsonValue('engagements_reactions_over_time')
  engagementsReactionsOverTime,

  /// Chart for comments over time.
  @JsonValue('engagements_comments_over_time')
  engagementsCommentsOverTime,

  /// Chart for reactions by type.
  @JsonValue('engagements_reactions_by_type')
  engagementsReactionsByType,

  // Reports Tab
  /// Chart for submitted reports over time.
  @JsonValue('engagements_reports_submitted_over_time')
  engagementsReportsSubmittedOverTime,

  /// Chart for average report resolution time.
  @JsonValue('engagements_reports_resolution_time_over_time')
  engagementsReportsResolutionTimeOverTime,

  /// Chart for reports by reason.
  @JsonValue('engagements_reports_by_reason')
  engagementsReportsByReason,

  // App Reviews Tab
  /// Chart for feedback submissions over time.
  @JsonValue('engagements_app_reviews_feedback_over_time')
  engagementsAppReviewsFeedbackOverTime,

  /// Chart for positive vs. negative feedback.
  @JsonValue('engagements_app_reviews_positive_vs_negative')
  engagementsAppReviewsPositiveVsNegative,

  /// Chart for store review requests over time.
  @JsonValue('engagements_app_reviews_store_requests_over_time')
  engagementsAppReviewsStoreRequestsOverTime,

  // --- Subscriptions Management Page ---
  /// A line chart showing the trend of active subscribers over time.
  @JsonValue('subscriptions_active_over_time')
  subscriptionsActiveOverTime,

  /// A bar chart showing the breakdown of all subscriptions by their status.
  @JsonValue('subscriptions_status_distribution')
  subscriptionsStatusDistribution,

  /// A bar chart showing the distribution of subscriptions by store provider
  /// (Apple vs. Google).
  @JsonValue('subscriptions_by_store_provider')
  subscriptionsByStoreProvider,
}
