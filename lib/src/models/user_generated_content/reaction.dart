import 'package:core/src/enums/reaction_type.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'reaction.g.dart';

/// {@template reaction}
/// A value object representing the type of reaction within an [Engagement].
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Reaction extends Equatable {
  /// {@macro reaction}
  const Reaction({required this.reactionType});

  /// Creates a [Reaction] from JSON data.
  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);

  /// The type of reaction (e.g., like, insightful).
  final ReactionType reactionType;

  /// Converts this [Reaction] instance to JSON data.
  Map<String, dynamic> toJson() => _$ReactionToJson(this);

  @override
  List<Object> get props => [reactionType];

  /// Creates a copy of this [Reaction] with updated values.
  Reaction copyWith({ReactionType? reactionType}) {
    return Reaction(reactionType: reactionType ?? this.reactionType);
  }
}
