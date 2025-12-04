import 'package:core/core.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'engagement.g.dart';

/// {@template engagement}
/// Represents a user's engagement with a specific piece of content.
/// An engagement consists of a mandatory reaction and an optional comment,
/// and is stored as a single document in the database.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Engagement extends Equatable {
  /// {@macro engagement}
  const Engagement({
    required this.id,
    required this.userId,
    required this.entityId,
    required this.entityType,
    required this.reaction,
    required this.createdAt,
    required this.updatedAt,
    this.comment,
  });

  /// Creates an [Engagement] from JSON data.
  factory Engagement.fromJson(Map<String, dynamic> json) =>
      _$EngagementFromJson(json);

  /// The unique identifier for the engagement.
  final String id;

  /// The ID of the user who made the engagement.
  final String userId;

  /// The ID of the entity being engaged with (e.g., a headline ID).
  final String entityId;

  /// The type of entity being engaged with.
  final EngageableType entityType;

  /// The user's reaction. This is a mandatory part of the engagement.
  final Reaction reaction;

  /// The user's optional comment, provided along with the reaction.
  final Comment? comment;

  /// The timestamp when the engagement was created.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The timestamp when the engagement was last updated.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// Converts this [Engagement] instance to JSON data.
  Map<String, dynamic> toJson() => _$EngagementToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    entityId,
    entityType,
    reaction,
    comment,
    createdAt,
    updatedAt,
  ];

  /// Creates a copy of this [Engagement] with updated values.
  Engagement copyWith({
    String? id,
    String? userId,
    String? entityId,
    EngageableType? entityType,
    Reaction? reaction,
    ValueWrapper<Comment?>? comment,
    DateTime? createdAt,
  }) {
    return Engagement(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      entityId: entityId ?? this.entityId,
      entityType: entityType ?? this.entityType,
      reaction: reaction ?? this.reaction,
      comment: comment != null ? comment.value : this.comment,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: DateTime.now(),
    );
  }
}
