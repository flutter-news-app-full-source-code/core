import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// Defines the reasons why a subscription might end.
enum SubscriptionEndedReason {
  /// The user explicitly canceled the subscription.
  userCanceled,

  /// The subscription ended due to billing issues (e.g., payment failure).
  billingError,

  /// The subscription was revoked (e.g., refunded).
  revoked,

  /// The subscription was replaced by another plan (e.g., upgrade/downgrade).
  replaced,

  /// The subscription ended for another reason.
  other,
}

/// {@template subscription_ended_payload}
/// Payload for the `subscriptionEnded` analytics event.
/// {@endtemplate}
class SubscriptionEndedPayload extends AnalyticsEventPayload {
  /// {@macro subscription_ended_payload}
  const SubscriptionEndedPayload({
    required this.productId,
    required this.reason,
  });

  /// The unique identifier of the subscription product that ended.
  final String productId;

  /// The reason the subscription ended.
  final SubscriptionEndedReason reason;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.productId: productId,
      AnalyticsParameterKeys.reason: reason.name,
    };
  }

  @override
  List<Object> get props => [productId, reason];
}
