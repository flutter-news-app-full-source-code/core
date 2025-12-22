import 'package:json_annotation/json_annotation.dart';

/// Defines the entitlement level a user has.
enum SubscriptionTier {
  /// A user who has not created an account.
  guest,

  /// A user with a free, registered account.
  standard,

  /// A user with a paid subscription.
  premium,
}

/// Defines the billing cycle for a subscription plan.
enum SubscriptionInterval {
  /// A monthly billing cycle.
  month,

  /// A yearly billing cycle.
  year,
}

/// Defines the payment provider.
///
/// This MUST remain distinct to handle provider-specific SDKs and backend
/// validation logic.
@JsonEnum()
enum StoreProvider {
  /// Apple App Store.
  apple,

  /// Google Play Store.
  google,

  /// Stripe for direct payments.
  stripe,
}

/// Represents the lifecycle state of a user's subscription.
@JsonEnum()
enum SubscriptionStatus {
  /// Access granted and payment is current.
  active,

  /// Payment failed, but access is temporarily retained.
  gracePeriod,

  /// Grace period over, access revoked, but store is still retrying payment.
  billingIssue,

  /// Auto-renew is off, access is valid until the current period ends.
  canceled,

  /// Access is fully revoked.
  expired,
}
