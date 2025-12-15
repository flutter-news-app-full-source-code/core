import 'package:json_annotation/json_annotation.dart';

/// {@template chart_type}
/// Defines the visual representation of a chart.
///
/// This enum is included in the `ChartCardData` model to explicitly tell the
/// client which type of chart to render.
/// {@endtemplate}
@JsonEnum()
enum ChartType {
  /// A line chart, typically used for time-series data.
  line,

  /// A bar chart, often used for comparing categorical data.
  bar,
}
