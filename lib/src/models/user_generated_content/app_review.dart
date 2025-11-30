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
/// ### Architectural Strategy: The Two-Layer Review Funnel
///
/// The design of this model is dictated by the constraints of native in-app
/// review APIs (Apple's `SKStoreReviewController` and Google's `ReviewManager`).
/// These APIs are intentionally designed as "fire-and-forget" mechanisms:
///
/// 1.  **OS-Controlled Quotas**: The operating system enforces strict, non-negotiable
///     quotas on how often the review prompt can be shown to a user (e.g., Apple
///     limits it to three times in a 365-day period). The app can request a review,
///     but the OS makes the final decision on whether to display the prompt.
/// 2.  **No Completion Callback**: The APIs provide no feedback to the application
///     about the outcome. The app cannot know if the prompt was shown, if the
///     user left a review, or what rating was given.
///
/// Given these constraints, the primary architectural goal is to **strategically
/// choose the optimal moment to make a review request**, thereby maximizing the
/// value of each limited opportunity. This is achieved with a two-layer funnel:
///
/// - **Layer 1 (Internal Prompt)**: A private, low-friction UI element within the
///   app gauges user sentiment (e.g., "Are you enjoying the app?"). This acts as
///   a crucial filter. The user's response is captured in the [initialFeedback]
///   field.
///
/// - **Layer 2 (Native OS Prompt)**: Only if a user provides a positive signal in
///   Layer 1 does the application "spend" its review opportunity by calling the
///   native API. This event is logged by setting the [storeReviewRequestedAt]
///   timestamp. After this, the corresponding `UserFeedDecoratorStatus` is marked
///   as completed to **permanently prevent the internal prompt from appearing
///   again for this user.**
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
