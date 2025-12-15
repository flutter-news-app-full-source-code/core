import 'package:core/src/models/analytics/analytics_event_payload.dart';
import 'package:core/src/models/analytics/analytics_parameter_keys.dart';

/// {@template limit_exceeded_cta_clicked_payload}
/// Payload for the `limitExceededCtaClicked` analytics event.
/// {@endtemplate}
class LimitExceededCtaClickedPayload extends AnalyticsEventPayload {
  /// {@macro limit_exceeded_cta_clicked_payload}
  const LimitExceededCtaClickedPayload({required this.ctaType});

  /// The type of call-to-action that was clicked within the content limitation bottomSheet
  /// (e.g., 'upgrade', 'linkAccount').
  final String ctaType;

  @override
  Map<String, dynamic> toMap() {
    return {AnalyticsParameterKeys.ctaType: ctaType};
  }

  @override
  List<Object> get props => [ctaType];
}
