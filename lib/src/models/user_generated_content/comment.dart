import 'package:core/src/enums/comment_status.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'comment.g.dart';

/// {@template comment}
/// Represents a user-submitted comment on a headline.
///
/// This model is designed to support a robust moderation system, with a `status`
/// field to track its state through the review process (manual or automated).
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Comment extends Equatable {
  /// {@macro comment}
  const Comment({
    required this.id,
    required this.headlineId,
    required this.userId,
    required this.content,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Creates a [Comment] from JSON data.
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  /// The unique identifier for the comment.
  final String id;

  /// The ID of the headline this comment is associated with.
  final String headlineId;

  /// The ID of the user who authored the comment.
  final String userId;

  /// The text content of the comment.
  final String content;

  /// The current moderation status of the comment.
  final CommentStatus status;

  /// The timestamp when the comment was created.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The timestamp when the comment was last updated.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// Converts this [Comment] instance to JSON data.
  Map<String, dynamic> toJson() => _$CommentToJson(this);

  @override
  List<Object> get props => [
    id,
    headlineId,
    userId,
    content,
    status,
    createdAt,
    updatedAt,
  ];

  /// Creates a copy of this [Comment] but with the given fields replaced
  /// with the new values.
  Comment copyWith({
    String? id,
    String? headlineId,
    String? userId,
    String? content,
    CommentStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Comment(
      id: id ?? this.id,
      headlineId: headlineId ?? this.headlineId,
      userId: userId ?? this.userId,
      content: content ?? this.content,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
