import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template subscription_renewed_payload}
/// Payload for the `subscriptionRenewed` analytics event.
/// {@endtemplate}
class SubscriptionRenewedPayload extends AnalyticsEventPayload {
  /// {@macro subscription_renewed_payload}
  const SubscriptionRenewedPayload({required this.productId});

  /// The unique identifier of the subscription product that was renewed.
  final String productId;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.productId: productId};
  }

  @override
  List<Object> get props => [productId];
}
