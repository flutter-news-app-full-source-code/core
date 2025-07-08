import 'package:ht_shared/src/models/feed_decorators/feed_action.dart';

/// {@template account_action_type}
/// Defines the specific type or purpose of an [FeedAction] item.
/// {@endtemplate}
enum FeedActionType {
  /// A call-to-action to link an anonymous account to an 
  /// email by authenticating.
  linkAccount,

  /// A call-to-action to upgrade to a premium subscription.
  upgrade,

  /// call-to-action to prompt users to rate the application
  rateApp,

  /// call-to-action to turn on push notifications for breaking
  /// news or personalized alerts.
  enableNotifications,

  /// A call-to-action for users to follow 5 topics to personalize their feed.
  followTopics,

  /// A call-to-action for users to follow 5 sources to personalize their feed.
  followSources,
}
