import 'package:core/core.dart' show AnalyticsEvent;
import 'package:core/src/enums/analytics_event.dart' show AnalyticsEvent;
import 'package:core/src/enums/enums.dart' show AnalyticsEvent;
import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template initial_personalization_started_payload}
/// Represents the payload for the [AnalyticsEvent.initialPersonalizationStarted] event.
/// {@endtemplate}
class InitialPersonalizationStartedPayload extends AnalyticsEventPayload {
  /// {@macro initial_personalization_started_payload}
  const InitialPersonalizationStartedPayload();

  @override
  Map<String, dynamic> toMap() => {};

  @override
  List<Object?> get props => [];
}
