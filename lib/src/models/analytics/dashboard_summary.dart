import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_summary.g.dart';

/// {@template dashboard_summary}
/// A model representing a summary of dashboard statistics.
///
/// This model is designed as a singleton resource, typically fetched with a
/// well-known ID like 'summary'.
/// {@endtemplate}
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class DashboardSummary extends Equatable {
  /// {@macro dashboard_summary}
  const DashboardSummary({
    required this.id,
    required this.headlineCount,
    required this.topicCount,
    required this.sourceCount,
  });

  /// Creates a [DashboardSummary] from a JSON object.
  factory DashboardSummary.fromJson(Map<String, dynamic> json) =>
      _$DashboardSummaryFromJson(json);

  /// The unique identifier for the summary.
  final String id;

  /// The total number of headlines.
  final int headlineCount;

  /// The total number of topics.
  final int topicCount;

  /// The total number of sources.
  final int sourceCount;

  /// Converts this [DashboardSummary] instance to a JSON object.
  Map<String, dynamic> toJson() => _$DashboardSummaryToJson(this);

  /// Creates a copy of this [DashboardSummary] but with the given fields
  /// replaced with the new values.
  DashboardSummary copyWith({
    String? id,
    int? headlineCount,
    int? topicCount,
    int? sourceCount,
  }) {
    return DashboardSummary(
      id: id ?? this.id,
      headlineCount: headlineCount ?? this.headlineCount,
      topicCount: topicCount ?? this.topicCount,
      sourceCount: sourceCount ?? this.sourceCount,
    );
  }

  @override
  List<Object?> get props => [id, headlineCount, topicCount, sourceCount];
}
