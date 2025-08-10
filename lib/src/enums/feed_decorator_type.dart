/// {@template feed_decorator_type}
/// Defines the specific type of a feed decorator.
///
/// This enum serves as a unique identifier for each decorator, used for
/// configuration and state tracking.
/// {@endtemplate}
enum FeedDecoratorType {
  /// A call-to-action to link an anonymous account to an email.
  linkAccount,

  /// A call-to-action to upgrade to a premium subscription.
  upgrade,

  /// A call-to-action to prompt users to rate the application.
  rateApp,

  /// A call-to-action to turn on push notifications.
  enableNotifications,

  /// A content collection of suggested topics to follow.
  suggestedTopics,

  /// A content collection of suggested sources to follow.
  suggestedSources,
}
