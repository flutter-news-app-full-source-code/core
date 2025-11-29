import 'package:core/src/enums/reaction_type.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'headline_reaction.g.dart';

/// {@template headline_reaction}
/// Represents a single, unique reaction from a user to a headline.
///
/// This model ensures that a user can only have one reaction of a specific
/// type on any given headline, providing a clear and non-duplicative dataset
/// for engagement analysis.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class HeadlineReaction extends Equatable {
  /// {@macro headline_reaction}
  const HeadlineReaction({
    required this.id,
    required this.headlineId,
    required this.userId,
    required this.reactionType,
    required this.createdAt,
  });

  /// Creates a [HeadlineReaction] from JSON data.
  factory HeadlineReaction.fromJson(Map<String, dynamic> json) =>
      _$HeadlineReactionFromJson(json);

  /// The unique identifier for the reaction.
  final String id;

  /// The ID of the headline being reacted to.
  final String headlineId;

  /// The ID of the user who made the reaction.
  final String userId;

  /// The type of reaction (e.g., like, insightful, etc).
  final ReactionType reactionType;

  /// The timestamp when the reaction was created.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// Converts this [HeadlineReaction] instance to JSON data.
  Map<String, dynamic> toJson() => _$HeadlineReactionToJson(this);

  @override
  List<Object> get props => [id, headlineId, userId, reactionType, createdAt];

  /// Creates a copy of this [HeadlineReaction] but with the given fields
  /// replaced with the new values.
  HeadlineReaction copyWith({
    String? id,
    String? headlineId,
    String? userId,
    ReactionType? reactionType,
    DateTime? createdAt,
  }) {
    return HeadlineReaction(
      id: id ?? this.id,
      headlineId: headlineId ?? this.headlineId,
      userId: userId ?? this.userId,
      reactionType: reactionType ?? this.reactionType,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
