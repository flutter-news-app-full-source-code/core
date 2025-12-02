import 'package:json_annotation/json_annotation.dart';

/// {@template moderation_status}
/// Defines the moderation status of a user-submitted content, such as a
/// comment or a report.
/// {@endtemplate}
@JsonEnum()
enum ModerationStatus {
  /// The item has been submitted and is awaiting moderation.
  @JsonValue('pendingReview')
  pendingReview,

  /// The item has been reviewed and a decision has been made.
  @JsonValue('resolved')
  resolved,
}
