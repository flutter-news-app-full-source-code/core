import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template subscription_cancelled_payload}
/// Payload for the `subscriptionCancelled` analytics event.
/// {@endtemplate}
class SubscriptionCancelledPayload extends AnalyticsEventPayload {
  /// {@macro subscription_cancelled_payload}
  const SubscriptionCancelledPayload({required this.productId});

  /// The unique identifier of the subscription product that was cancelled.
  final String productId;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.productId: productId};
  }

  @override
  List<Object> get props => [productId];
}
