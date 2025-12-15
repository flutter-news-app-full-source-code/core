import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'data_point.g.dart';

/// {@template data_point}
/// Represents a single data point in a time-series, typically for a chart.
///
/// It contains a timestamp and a corresponding numeric value.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class DataPoint extends Equatable {
  /// {@macro data_point}
  const DataPoint({required this.timestamp, required this.value});

  /// Creates a [DataPoint] from JSON data.
  factory DataPoint.fromJson(Map<String, dynamic> json) =>
      _$DataPointFromJson(json);

  /// The timestamp for this data point.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime timestamp;

  /// The numeric value of this data point.
  final num value;

  /// Converts this [DataPoint] instance to JSON data.
  Map<String, dynamic> toJson() => _$DataPointToJson(this);

  @override
  List<Object> get props => [timestamp, value];
}
