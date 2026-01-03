import 'package:core/core.dart';

/// A list of predefined user subscriptions for fixture data.
///
/// These subscriptions correspond to the premium users defined in `users.dart`.
final List<UserSubscription> userSubscriptionsFixturesData = [
  // Subscription for the Admin User
  UserSubscription(
    id: kAdminSubscriptionId,
    userId: kAdminUserId,
    tier: AccessTier.premium,
    status: SubscriptionStatus.active,
    provider: StoreProviders.apple,
    validUntil: DateTime.now().add(const Duration(days: 365)),
    willAutoRenew: true,
    originalTransactionId: '3000000123456789',
  ),
  // Subscription for the Premium Publisher
  UserSubscription(
    id: kPublisherPremiumSubscriptionId,
    userId: kPublisherPremiumId,
    tier: AccessTier.premium,
    status: SubscriptionStatus.active,
    provider: StoreProviders.google,
    validUntil: DateTime.now().add(const Duration(days: 25)),
    willAutoRenew: true,
    originalTransactionId: 'gpa.1234-5678-9012-34567',
  ),
  // Subscription for the regular Premium User
  UserSubscription(
    id: kPremiumUserSubscriptionId,
    userId: kPremiumUserId,
    tier: AccessTier.premium,
    status: SubscriptionStatus.active,
    provider: StoreProviders.apple,
    validUntil: DateTime.now().add(const Duration(days: 15)),
    willAutoRenew: true,
    originalTransactionId: '2000000123456789',
  ),
  // Subscription for the user whose payment failed (Grace Period)
  UserSubscription(
    id: kGracePeriodUserSubscriptionId,
    userId: kGracePeriodUserId,
    tier: AccessTier.premium,
    status: SubscriptionStatus.gracePeriod,
    provider: StoreProviders.google,
    validUntil: DateTime.now().add(const Duration(days: 3)), // Ends soon
    willAutoRenew: true, // Still attempting to renew
    originalTransactionId: 'gpa.8765-4321-0987-65432',
  ),
];
