import 'package:json_annotation/json_annotation.dart';

/// {@template kpi_time_frame}
/// Defines the selectable time periods for a KPI card.
///
/// Each value corresponds to a toggle on the UI, allowing the user to switch
/// the data view for a specific KPI.
/// {@endtemplate}
@JsonEnum()
enum KpiTimeFrame {
  /// Data for the last 24 hours.
  day,

  /// Data for the last 7 days.
  week,

  /// Data for the last 30 days.
  month,

  /// Data for the last 365 days.
  year,
}
