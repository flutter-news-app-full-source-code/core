import 'package:core/src/utils/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'negative_feedback.g.dart';

/// {@template negative_feedback}
/// Represents a single instance of negative feedback provided by a user.
///
/// This is stored as a list within the "AppReview" model to track the history
/// of a user's sentiment over time.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class NegativeFeedback extends Equatable {
  /// {@macro negative_feedback}
  const NegativeFeedback({required this.providedAt, this.reason});

  /// Creates a [NegativeFeedback] from JSON data.
  factory NegativeFeedback.fromJson(Map<String, dynamic> json) =>
      _$NegativeFeedbackFromJson(json);

  /// The timestamp when this specific piece of feedback was provided.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime providedAt;

  /// The optional text reason provided by the user for their dissatisfaction.
  final String? reason;

  /// Converts this [NegativeFeedback] instance to JSON data.
  Map<String, dynamic> toJson() => _$NegativeFeedbackToJson(this);

  @override
  List<Object?> get props => [providedAt, reason];
}
