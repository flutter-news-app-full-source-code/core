import 'package:core/src/models/dashboard/data_point.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'dashboard_chart_data.g.dart';

/// {@template dashboard_chart_data}
/// A model for storing pre-aggregated time-series data for a dashboard chart.
///
/// This model holds a list of [DataPoint] objects and is identified by a
/// unique ID, allowing it to be stored and fetched from the database.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class DashboardChartData extends Equatable {
  /// {@macro dashboard_chart_data}
  const DashboardChartData({required this.id, required this.dataPoints});

  /// Creates a [DashboardChartData] from JSON data.
  factory DashboardChartData.fromJson(Map<String, dynamic> json) =>
      _$DashboardChartDataFromJson(json);

  /// A unique identifier for the chart data
  /// (e.g., 'content_management_views_monthly').
  final String id;

  /// A list of data points representing the time-series data.
  final List<DataPoint> dataPoints;

  /// Converts this [DashboardChartData] instance to JSON data.
  Map<String, dynamic> toJson() => _$DashboardChartDataToJson(this);

  @override
  List<Object> get props => [id, dataPoints];
}
