import 'package:core/src/enums/engageable_type.dart';
import 'package:core/src/models/user_generated_content/comment.dart';
import 'package:core/src/models/user_generated_content/reaction.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'engagement.g.dart';

/// {@template engagement}
/// Represents a user's complete engagement action, which includes a mandatory
/// reaction and an optional comment, tied to a specific entity.
///
/// This model is intended to be sent from the client to the backend in a
/// single request to record a user's interaction.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Engagement extends Equatable {
  /// {@macro engagement}
  const Engagement({
    required this.entityId,
    required this.entityType,
    required this.reaction,
    this.comment,
  });

  /// Creates an [Engagement] from JSON data.
  factory Engagement.fromJson(Map<String, dynamic> json) =>
      _$EngagementFromJson(json);

  /// The ID of the entity being engaged with (e.g., a headline ID).
  final String entityId;

  /// The type of entity being engaged with.
  final EngageableType entityType;

  /// The user's reaction. This is a mandatory part of the engagement.
  final Reaction reaction;

  /// The user's optional comment, provided along with the reaction.
  final Comment? comment;

  /// Converts this [Engagement] instance to JSON data.
  Map<String, dynamic> toJson() => _$EngagementToJson(this);

  @override
  List<Object?> get props => [entityId, entityType, reaction, comment];

  /// Creates a copy of this [Engagement] with updated values.
  Engagement copyWith({Reaction? reaction, Comment? comment}) {
    return Engagement(
      entityId: entityId,
      entityType: entityType,
      reaction: reaction ?? this.reaction,
      comment: comment ?? this.comment,
    );
  }
}
