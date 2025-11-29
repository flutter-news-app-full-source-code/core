import 'package:json_annotation/json_annotation.dart';

/// {@template reaction_type}
/// Defines the types of reactions a user can have to a headline.
/// {@endtemplate}
@JsonEnum()
enum ReactionType {
  /// Represents a "like" or "thumbs up" reaction.
  /// General positive approval.
  @JsonValue('like')
  like,

  /// Represents an "insightful" or "lightbulb" reaction.
  /// Signals the article provided new information or a valuable perspective.
  @JsonValue('insightful')
  insightful,

  /// Represents an "amusing" or "funny" reaction.
  /// For lighthearted or humorous content.
  @JsonValue('amusing')
  amusing,

  /// Represents a "sad" reaction.
  /// For news that evokes empathy or sadness.
  @JsonValue('sad')
  sad,

  /// Represents an "angry" or "outrageous" reaction.
  /// For news that provokes a strong negative emotional response.
  @JsonValue('angry')
  angry,

  /// Represents a "skeptical" or "questionable" reaction.
  /// Signals that the user questions the validity, bias, or sourcing of the
  /// article without formally reporting it.
  @JsonValue('skeptical')
  skeptical,
}
