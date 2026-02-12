import 'package:core/core.dart' show AnalyticsEvent, AnalyticsParameterKeys;
import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template initial_personalization_step_viewed_payload}
/// Represents the payload for the [AnalyticsEvent.initialPersonalizationStepViewed] event.
/// {@endtemplate}
class InitialPersonalizationStepViewedPayload extends AnalyticsEventPayload {
  /// {@macro initial_personalization_step_viewed_payload}
  const InitialPersonalizationStepViewedPayload({required this.stepName});

  /// The name of the personalization step that was viewed (e.g., 'topics').
  final String stepName;

  @override
  Map<String, dynamic> toMap() => {AnalyticsParameterKeys.stepName: stepName};

  @override
  List<Object?> get props => [stepName];
}
