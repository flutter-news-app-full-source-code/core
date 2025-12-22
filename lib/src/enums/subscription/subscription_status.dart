import 'package:json_annotation/json_annotation.dart';

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
