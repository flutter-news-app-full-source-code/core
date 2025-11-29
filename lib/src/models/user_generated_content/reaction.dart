import 'package:core/src/enums/engageable_type.dart';
import 'package:core/src/enums/reaction_type.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'reaction.g.dart';

/// {@template reaction}
/// Represents a user's reaction to a specific piece of content.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Reaction extends Equatable {
  /// {@macro reaction}
  const Reaction({
    required this.id,
    required this.userId,
    required this.entityId,
    required this.entityType,
    required this.reactionType,
    required this.createdAt,
  });

  /// Creates a [Reaction] from JSON data.
  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);

  /// The unique identifier for the reaction.
  final String id;

  /// The ID of the user who made the reaction.
  final String userId;

  /// The ID of the entity being reacted to (e.g., a headline ID).
  final String entityId;

  /// The type of entity being reacted to.
  final EngageableType entityType;

  /// The type of reaction (e.g., like, insightful).
  final ReactionType reactionType;

  /// The timestamp when the reaction was created.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// Converts this [Reaction] instance to JSON data.
  Map<String, dynamic> toJson() => _$ReactionToJson(this);

  @override
  List<Object> get props => [
    id,
    userId,
    entityId,
    entityType,
    reactionType,
    createdAt,
  ];

  /// Creates a copy of this [Reaction] with updated values.
  Reaction copyWith({ReactionType? reactionType}) {
    return Reaction(
      id: id,
      userId: userId,
      entityId: entityId,
      entityType: entityType,
      reactionType: reactionType ?? this.reactionType,
      createdAt: createdAt,
    );
  }
}
