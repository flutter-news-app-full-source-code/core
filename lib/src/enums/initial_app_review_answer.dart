import 'package:json_annotation/json_annotation.dart';

/// {@template initial_app_review_answer}
/// Represents the user's response to the initial, private app review prompt
/// (e.g., "Are you enjoying the app?").
/// {@endtemplate}
@JsonEnum()
enum InitialAppReviewAnswer {
  /// The user indicated a positive experience.
  @JsonValue('positive')
  positive,

  /// The user indicated a negative experience.
  @JsonValue('negative')
  negative,
}
