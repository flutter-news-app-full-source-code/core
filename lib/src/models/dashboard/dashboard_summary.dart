import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'dashboard_summary.g.dart';

/// {@template dashboard_summary}
/// A model representing a summary of dashboard statistics.
///
/// This model is designed as a singleton resource, typically fetched with a
/// well-known ID like 'summary'.
/// {@endtemplate}
@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
  includeIfNull: false,
  checked: true,
)
class DashboardSummary extends Equatable {
  /// {@macro dashboard_summary}
  DashboardSummary({
    required this.headlineCount,
    required this.categoryCount,
    required this.sourceCount,
    String? id,
  }) : id = id ?? const Uuid().v4();

  /// Creates a [DashboardSummary] from a JSON object.
  factory DashboardSummary.fromJson(Map<String, dynamic> json) =>
      _$DashboardSummaryFromJson(json);

  /// The unique identifier for the summary.
  final String id;

  /// The total number of headlines.
  final int headlineCount;

  /// The total number of categories.
  final int categoryCount;

  /// The total number of sources.
  final int sourceCount;

  /// Converts this [DashboardSummary] instance to a JSON object.
  Map<String, dynamic> toJson() => _$DashboardSummaryToJson(this);

  /// Creates a copy of this [DashboardSummary] but with the given fields
  /// replaced with the new values.
  DashboardSummary copyWith({
    String? id,
    int? headlineCount,
    int? categoryCount,
    int? sourceCount,
  }) {
    return DashboardSummary(
      id: id ?? this.id,
      headlineCount: headlineCount ?? this.headlineCount,
      categoryCount: categoryCount ?? this.categoryCount,
      sourceCount: sourceCount ?? this.sourceCount,
    );
  }

  @override
  List<Object?> get props => [id, headlineCount, categoryCount, sourceCount];
}
