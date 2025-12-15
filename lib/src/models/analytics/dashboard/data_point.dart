import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'data_point.g.dart';

/// {@template data_point} /// Represents a single data point for a chart.
///
/// This model is flexible and can represent two types of data points:
/// - **Time-Series**: A point with a `timestamp` and a `value`.
/// - **Categorical**: A point with a `label` (e.g., a category name) and a
///   `value`.
///
/// An assertion ensures that either `timestamp` or `label` is provided, but
/// not both.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class DataPoint extends Equatable {
  /// {@macro data_point}
  const DataPoint({this.timestamp, this.label, required this.value})
    : assert(
        timestamp != null || label != null,
        'Either timestamp or label must be provided.',
      ),
      assert(
        timestamp == null || label == null,
        'Cannot provide both timestamp and label.',
      );

  /// Creates a [DataPoint] from JSON data.
  factory DataPoint.fromJson(Map<String, dynamic> json) =>
      _$DataPointFromJson(json);

  /// The timestamp for a time-series data point. Can be null for categorical
  /// data.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? timestamp;

  /// The label for a categorical data point. Can be null for time-series data.
  final String? label;

  /// The numeric value of this data point.
  final num value;

  /// Converts this [DataPoint] instance to JSON data.
  Map<String, dynamic> toJson() => _$DataPointToJson(this);

  @override
  List<Object?> get props => [timestamp, label, value];
}
