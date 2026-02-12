import 'package:core/core.dart' show AnalyticsEvent;
import 'package:core/src/enums/analytics_event.dart' show AnalyticsEvent;
import 'package:core/src/enums/enums.dart' show AnalyticsEvent;
import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template app_tour_completed_payload}
/// Represents the payload for the [AnalyticsEvent.appTourCompleted] event.
/// {@endtemplate}
class AppTourCompletedPayload extends AnalyticsEventPayload {
  /// {@macro app_tour_completed_payload}
  const AppTourCompletedPayload();

  @override
  Map<String, dynamic> toMap() => {};

  @override
  List<Object?> get props => [];
}
