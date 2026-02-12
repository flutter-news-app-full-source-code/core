import 'package:core/core.dart' show AnalyticsEvent, AnalyticsParameterKeys;
import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template app_tour_step_viewed_payload}
/// Represents the payload for the [AnalyticsEvent.appTourStepViewed] event.
/// {@endtemplate}
class AppTourStepViewedPayload extends AnalyticsEventPayload {
  /// {@macro app_tour_step_viewed_payload}
  const AppTourStepViewedPayload({required this.stepIndex});

  /// The index of the tour step that was viewed.
  final int stepIndex;

  @override
  Map<String, dynamic> toMap() => {AnalyticsParameterKeys.stepIndex: stepIndex};

  @override
  List<Object?> get props => [stepIndex];
}
