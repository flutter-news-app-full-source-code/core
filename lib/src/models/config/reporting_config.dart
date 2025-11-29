import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'reporting_config.g.dart';

/// {@template reporting_config}
/// Defines the remote configuration for the user content reporting system.
///
/// This allows administrators to enable or disable the reporting functionality
/// for each reportable entity (`headline`, `source`, `comment`) individually.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class ReportingConfig extends Equatable {
  /// {@macro reporting_config}
  const ReportingConfig({
    required this.headlineReportingEnabled,
    required this.sourceReportingEnabled,
    required this.commentReportingEnabled,
  });

  /// Creates a [ReportingConfig] from JSON data.
  factory ReportingConfig.fromJson(Map<String, dynamic> json) =>
      _$ReportingConfigFromJson(json);

  /// A switch to enable or disable reporting for headlines.
  final bool headlineReportingEnabled;

  /// A switch to enable or disable reporting for news sources.
  final bool sourceReportingEnabled;

  /// A switch to enable or disable reporting for user comments.
  final bool commentReportingEnabled;

  /// Converts this [ReportingConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$ReportingConfigToJson(this);

  @override
  List<Object> get props => [
    headlineReportingEnabled,
    sourceReportingEnabled,
    commentReportingEnabled,
  ];

  /// Creates a copy of this [ReportingConfig] but with the given fields
  /// replaced with the new values.
  ReportingConfig copyWith({
    bool? headlineReportingEnabled,
    bool? sourceReportingEnabled,
    bool? commentReportingEnabled,
  }) {
    return ReportingConfig(
      headlineReportingEnabled:
          headlineReportingEnabled ?? this.headlineReportingEnabled,
      sourceReportingEnabled:
          sourceReportingEnabled ?? this.sourceReportingEnabled,
      commentReportingEnabled:
          commentReportingEnabled ?? this.commentReportingEnabled,
    );
  }
}
