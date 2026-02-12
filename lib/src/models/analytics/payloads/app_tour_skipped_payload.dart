import 'package:core/core.dart' show AnalyticsEvent;
import 'package:core/src/enums/analytics_event.dart' show AnalyticsEvent;
import 'package:core/src/enums/enums.dart' show AnalyticsEvent;
import 'package:core/src/models/analytics/analytics_event_payload.dart';

/// {@template app_tour_skipped_payload}
/// Represents the payload for the [AnalyticsEvent.appTourSkipped] event.
/// {@endtemplate}
class AppTourSkippedPayload extends AnalyticsEventPayload {
  /// {@macro app_tour_skipped_payload}
  const AppTourSkippedPayload();

  @override
  Map<String, dynamic> toMap() => {};

  @override
  List<Object?> get props => [];
}
