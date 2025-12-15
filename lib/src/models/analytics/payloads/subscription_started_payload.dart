import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template subscription_started_payload}
/// Payload for the `subscriptionStarted` analytics event.
/// {@endtemplate}
class SubscriptionStartedPayload extends AnalyticsEventPayload {
  /// {@macro subscription_started_payload}
  const SubscriptionStartedPayload({
    required this.productId,
    required this.price,
    required this.currency,
  });

  /// The unique identifier of the subscription product.
  final String productId;

  /// The price of the subscription.
  final double price;

  /// The ISO 4217 currency code of the price.
  final String currency;

  @override
  Map<String, dynamic> toMap() {
    return {'productId': productId, 'price': price, 'currency': currency};
  }

  @override
  List<Object> get props => [productId, price, currency];
}
