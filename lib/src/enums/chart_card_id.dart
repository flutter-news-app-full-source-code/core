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
  usersRegistrationsOverTime,

  /// Chart for active users over time.
  usersActiveUsersOverTime,

  /// Chart for user tier distribution (Guest, Standard, Premium).
  usersTierDistribution,

  // --- Content Management Page ---
  // Headlines Tab
  /// Chart for headline views over time.
  contentHeadlinesViewsOverTime,

  /// Chart for headline likes over time.
  contentHeadlinesLikesOverTime,

  /// Chart for headline views categorized by topic.
  contentHeadlinesViewsByTopic,

  // Sources Tab
  /// Chart for headlines published by sources over time.
  contentSourcesHeadlinesPublishedOverTime,

  /// A bar chart showing the count of news sources categorized by their
  /// ContentStatus (e.g., 'active', 'draft', 'archived'). This provides
  /// insight into the lifecycle and availability of your content sources.
  contentSourcesStatusDistribution,

  /// Chart for engagement by source type.
  contentSourcesEngagementByType,

  // Topics Tab
  /// A bar chart showing the count of headlines categorized by whether they are
  /// marked as 'breaking news' (isBreaking: true) or not. This offers a view
  /// into the volume of urgent vs. regular content.
  contentHeadlinesBreakingNewsDistribution,

  /// Chart for headlines published per topic over time.
  contentTopicsHeadlinesPublishedOverTime,

  /// Chart for engagement by topic.
  contentTopicsEngagementByTopic,

  // --- Engagements Management Page ---
  // Engagements Tab (Reactions & Comments)
  /// Chart for reactions over time.
  engagementsReactionsOverTime,

  /// Chart for comments over time.
  engagementsCommentsOverTime,

  /// Chart for reactions by type.
  engagementsReactionsByType,

  // Reports Tab
  /// Chart for submitted reports over time.
  engagementsReportsSubmittedOverTime,

  /// Chart for average report resolution time.
  engagementsReportsResolutionTimeOverTime,

  /// Chart for reports by reason.
  engagementsReportsByReason,

  // App Reviews Tab
  /// Chart for feedback submissions over time.
  engagementsAppReviewsFeedbackOverTime,

  /// Chart for positive vs. negative feedback.
  engagementsAppReviewsPositiveVsNegative,

  /// Chart for store review requests over time.
  engagementsAppReviewsStoreRequestsOverTime,

  // --- Rewards Management Page ---
  /// A line chart showing the trend of ads watched for rewards over time.
  rewardsAdsWatchedOverTime,

  /// A line chart showing the trend of rewards successfully granted over time.
  rewardsGrantedOverTime,

  /// A bar chart showing the distribution of active rewards by type (e.g. Ad-Free vs Digest).
  rewardsActiveByType,
}
