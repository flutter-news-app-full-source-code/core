import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'dashboard_kpi.g.dart';

/// {@template dashboard_kpi}
/// A model for storing a single, pre-aggregated Key Performance Indicator (KPI)
/// to be displayed on the dashboard.
///
/// This model is designed to be stored in the database by a background worker
/// and fetched by the dashboard, providing a fast and efficient way to display
/// high-level metrics.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class DashboardKpi extends Equatable {
  /// {@macro dashboard_kpi}
  const DashboardKpi({
    required this.id,
    required this.label,
    required this.value,
    required this.trend,
    required this.timePeriod,
  });

  /// Creates a [DashboardKpi] from JSON data.
  factory DashboardKpi.fromJson(Map<String, dynamic> json) =>
      _$DashboardKpiFromJson(json);

  /// A unique identifier for the KPI (e.g., 'user_management_dau_weekly').
  final String id;

  /// The display label for the KPI (e.g., 'Daily Active Users').
  final String label;

  /// The numeric value of the KPI.
  final num value;

  /// A string representing the trend (e.g., '+5.2%', '-100').
  final String trend;

  /// A string describing the time period (e.g., 'Last 7 Days').
  final String timePeriod;

  /// Converts this [DashboardKpi] instance to JSON data.
  Map<String, dynamic> toJson() => _$DashboardKpiToJson(this);

  @override
  List<Object> get props => [id, label, value, trend, timePeriod];
}
