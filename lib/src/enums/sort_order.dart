import 'package:json_annotation/json_annotation.dart';

/// {@template sort_order}
/// Defines the direction for sorting data.
/// {@endtemplate}
@JsonEnum()
enum SortOrder {
  /// Sorts in ascending order (e.g., A-Z, 1-9).
  @JsonValue('asc')
  asc,

  /// Sorts in descending order (e.g., Z-A, 9-1).
  @JsonValue('desc')
  desc,
}
