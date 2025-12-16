import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template paywall_presented_payload}
/// Payload for the `paywallPresented` analytics event.
/// {@endtemplate}
class PaywallPresentedPayload extends AnalyticsEventPayload {
  /// {@macro paywall_presented_payload}
  const PaywallPresentedPayload({required this.triggerEvent, this.contentId});

  /// The name of the event that triggered the paywall presentation.
  final String triggerEvent;

  /// The ID of the content that triggered the paywall, if applicable.
  final String? contentId;

  @override
  Map<String, dynamic> toMap() {
    return {
      AnalyticsParameterKeys.triggerEvent: triggerEvent,
      if (contentId != null) AnalyticsParameterKeys.contentId: contentId,
    };
  }

  @override
  List<Object?> get props => [triggerEvent, contentId];
}
