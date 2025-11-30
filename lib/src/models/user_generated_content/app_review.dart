import 'package:core/core.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:core/src/utils/nullable_date_time_converter.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_review.g.dart';

/// {@template app_review}
/// Represents a user's journey through the in-app review funnel.
///
/// This model tracks the user's initial response and subsequent actions. The
/// core architectural principle is to strategically use the single, "fire-and-forget"
/// opportunity provided by the native OS review prompt.
///
/// - A `positive` [initialFeedback] leads to setting [storeReviewRequestedAt],
///   which logs that the app has made its one-time request to the OS. The
///   corresponding `UserFeedDecoratorStatus` is then marked as completed to
///   prevent ever prompting this user again.
/// - A `negative` [initialFeedback] adds an entry to the [negativeFeedbackHistory].
///   The user can be prompted again after a cooldown period.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AppReview extends Equatable {
  /// {@macro app_review}
  const AppReview({
    required this.id,
    required this.userId,
    required this.initialFeedback,
    required this.createdAt,
    required this.updatedAt,
    this.storeReviewRequestedAt,
    this.negativeFeedbackHistory = const [],
  });

  /// Creates an [AppReview] from JSON data.
  factory AppReview.fromJson(Map<String, dynamic> json) =>
      _$AppReviewFromJson(json);

  /// The unique identifier for this app review record.
  final String id;

  /// The ID of the user providing the feedback.
  final String userId;

  /// The user's answer to the initial, private feedback prompt.
  final InitialAppReviewFeedback initialFeedback;

  /// The timestamp when this review record was created (i.e., when the user
  /// answered the initial prompt).
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The timestamp when this review record was last updated.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// The timestamp when a native OS store review was requested.
  ///
  /// A `null` value indicates that a store review has not yet been requested.
  /// This is typically set after a user provides a `positive` [initialFeedback].
  @NullableDateTimeConverter()
  final DateTime? storeReviewRequestedAt;

  /// A historical log of all negative feedback instances from the user.
  ///
  /// Each time a user responds negatively to the initial prompt, a new
  /// [NegativeFeedback] entry is added to this list. This preserves valuable
  /// historical data on user sentiment.
  final List<NegativeFeedback> negativeFeedbackHistory;

  /// Converts this [AppReview] instance to JSON data.
  Map<String, dynamic> toJson() => _$AppReviewToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    initialFeedback,
    createdAt,
    updatedAt,
    storeReviewRequestedAt,
    negativeFeedbackHistory,
  ];

  /// Creates a copy of this [AppReview] with updated values.
  AppReview copyWith({
    InitialAppReviewFeedback? initialFeedback,
    DateTime? updatedAt,
    DateTime? storeReviewRequestedAt,
    List<NegativeFeedback>? negativeFeedbackHistory,
  }) {
    return AppReview(
      id: id,
      userId: userId,
      initialFeedback: initialFeedback ?? this.initialFeedback,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      storeReviewRequestedAt:
          storeReviewRequestedAt ?? this.storeReviewRequestedAt,
      negativeFeedbackHistory:
          negativeFeedbackHistory ?? this.negativeFeedbackHistory,
    );
  }
}
