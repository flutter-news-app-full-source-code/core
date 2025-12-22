/// Defines the entitlement level a user has.
enum SubscriptionTier {
  /// A user who has not created an account.
  guest,

  /// A user with a free, registered account.
  standard,

  /// A user with a paid subscription.
  premium,
}
