import 'package:core/core.dart' show AnalyticsEvent;
import 'package:core/src/enums/analytics_event.dart' show AnalyticsEvent;
import 'package:core/src/enums/enums.dart' show AnalyticsEvent;
import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template app_tour_started_payload}
/// Represents the payload for the [AnalyticsEvent.appTourStarted] event.
/// {@endtemplate}
class AppTourStartedPayload extends AnalyticsEventPayload {
  /// {@macro app_tour_started_payload}
  const AppTourStartedPayload();

  @override
  Map<String, dynamic> toMap() => {};

  @override
  List<Object?> get props => [];
}
