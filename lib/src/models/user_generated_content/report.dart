import 'package:core/src/enums/comment_report_reason.dart';
import 'package:core/src/enums/headline_report_reason.dart';
import 'package:core/src/enums/report_status.dart';
import 'package:core/src/enums/reportable_entity.dart';
import 'package:core/src/enums/source_report_reason.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'report.g.dart';

/// {@template report}
/// A flexible data model for handling user reports across different entity
/// types.
///
/// It uses a `ReportableEntity` enum and `entityId` to dynamically target
/// headlines, sources, or comments. The model includes the report reason,
/// additional comments, and a `ReportStatus` for the moderation workflow.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Report extends Equatable {
  /// {@macro report}
  const Report({
    required this.id,
    required this.reporterUserId,
    required this.entityType,
    required this.entityId,
    required this.reason,
    required this.status,
    required this.createdAt,
    this.additionalComments,
  });

  /// Creates a [Report] from JSON data.
  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);

  /// The unique identifier for the report.
  final String id;

  /// The ID of the user who made the report.
  final String reporterUserId;

  /// The type of entity being reported (e.g., headline, source, comment).
  final ReportableEntity entityType;

  /// The ID of the specific item being reported.
  final String entityId;

  /// The specific reason for the report. This is a dynamic field that holds
  /// the string value of the relevant reason enum (e.g.,
  /// [HeadlineReportReason], [SourceReportReason], [CommentReportReason]).
  final String reason;

  /// The current moderation status of the report.
  final ReportStatus status;

  /// Optional additional comments from the user providing more context.
  final String? additionalComments;

  /// The timestamp when the report was created.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// Converts this [Report] instance to JSON data.
  Map<String, dynamic> toJson() => _$ReportToJson(this);

  @override
  List<Object?> get props => [
    id,
    reporterUserId,
    entityType,
    entityId,
    reason,
    status,
    additionalComments,
    createdAt,
  ];

  /// Creates a copy of this [Report] but with the given fields replaced
  /// with the new values.
  Report copyWith({
    String? id,
    String? reporterUserId,
    ReportableEntity? entityType,
    String? entityId,
    String? reason,
    ReportStatus? status,
    String? additionalComments,
    DateTime? createdAt,
  }) {
    return Report(
      id: id ?? this.id,
      reporterUserId: reporterUserId ?? this.reporterUserId,
      entityType: entityType ?? this.entityType,
      entityId: entityId ?? this.entityId,
      reason: reason ?? this.reason,
      status: status ?? this.status,
      additionalComments: additionalComments ?? this.additionalComments,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
