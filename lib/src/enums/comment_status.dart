import 'package:json_annotation/json_annotation.dart';

/// {@template comment_status}
/// Defines the lifecycle status of a user-submitted comment.
/// {@endtemplate}
@JsonEnum()
enum CommentStatus {
  /// The comment has been submitted and is awaiting moderation.
  @JsonValue('pendingReview')
  pendingReview,

  /// The comment has been approved by a moderator and is publicly visible.
  @JsonValue('approved')
  approved,

  /// The comment has been rejected by a moderator and is not visible.
  @JsonValue('rejected')
  rejected,

  /// The comment has been automatically flagged by an AI moderation service.
  @JsonValue('flaggedByAI')
  flaggedByAI,

  /// The comment has been hidden by the user who posted it.
  @JsonValue('hiddenByUser')
  hiddenByUser,
}
