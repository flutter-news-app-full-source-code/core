import 'package:core/src/enums/subscription_enums.dart';
import 'package:core/src/models/analytics/payloads/analytics_event_payload.dart';
import 'package:core/src/models/analytics/payloads/analytics_parameter_keys.dart';

/// {@template subscription_tier_changed_payload}
/// Payload for the `subscriptionTierChanged` analytics event.
///
/// This event is fired when a user's entitlement level changes, for example,
/// by upgrading to premium or when a subscription expires.
/// {@endtemplate}
class SubscriptionTierChangedPayload extends AnalyticsEventPayload {
  /// {@macro subscription_tier_changed_payload}
  const SubscriptionTierChangedPayload({
    required this.fromTier,
    required this.toTier,
  });

  /// The user's subscription tier before the change.
  final SubscriptionTier fromTier;

  /// The user's new subscription tier after the change.
  final SubscriptionTier toTier;

  @override
  Map<String, dynamic> toMap() {
    return {'fromTier': fromTier.name, 'toTier': toTier.name};
  }

  @override
  List<Object> get props => [fromTier, toTier];
}
