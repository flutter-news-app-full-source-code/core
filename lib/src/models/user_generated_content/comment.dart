import 'package:core/src/enums/comment_status.dart';
import 'package:core/src/enums/engageable_type.dart';
import 'package:core/src/models/entities/language.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'comment.g.dart';

/// {@template user_comment}
/// Represents a user-submitted comment on a specific piece of content.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Comment extends Equatable {
  /// {@macro user_comment}
  const Comment({
    required this.id,
    required this.userId,
    required this.entityId,
    required this.entityType,
    required this.language,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    this.status = CommentStatus.pendingReview,
  });

  /// Creates a [Comment] from JSON data.
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  /// The unique identifier for the comment.
  final String id;

  /// The ID of the user who authored the comment.
  final String userId;

  /// The ID of the entity being commented on (e.g., a headline ID).
  final String entityId;

  /// The type of entity being commented on.
  final EngageableType entityType;

  /// The language of the comment.
  final Language language;

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
    userId,
    entityId,
    entityType,
    language,
    content,
    status,
    createdAt,
    updatedAt,
  ];

  /// Creates a copy of this [Comment] with updated values.
  Comment copyWith({
    String? content,
    Language? language,
    CommentStatus? status,
  }) {
    return Comment(
      id: id,
      userId: userId,
      entityId: entityId,
      entityType: entityType,
      language: language ?? this.language,
      content: content ?? this.content,
      status: status ?? this.status,
      createdAt: createdAt,
      updatedAt: DateTime.now(),
    );
  }
}
