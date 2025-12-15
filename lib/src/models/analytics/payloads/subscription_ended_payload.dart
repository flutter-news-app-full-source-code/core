import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

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

  /// The reason the subscription ended (e.g., 'billingError', 'userCancelled').
  final String reason;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.productId: productId,
      AnalyticsParameterKeys.reason: reason,
    };
  }

  @override
  List<Object> get props => [productId, reason];
}
