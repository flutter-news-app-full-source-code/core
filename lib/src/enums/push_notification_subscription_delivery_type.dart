/// {@template push_notification_subscription_delivery_type}
/// Defines the types of notifications a user can receive for a subscription.
///
/// A user can opt into multiple delivery types for a single notification
/// subscription, allowing for flexible alert configurations.
/// {@endtemplate}
enum PushNotificationSubscriptionDeliveryType {
  /// Delivers a notification immediately only when a matching headline is
  /// editorially marked as "breaking news".
  breakingOnly,

  /// Delivers a single, AI-powered summary of all matching headlines from the
  /// past day, sent at a scheduled time.
  dailyDigest,
}
