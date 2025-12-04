import 'package:core/core.dart';
import 'package:core/src/utils/utils.dart';
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
///   a crucial filter. The user's response is captured in the [feedback]
///   field.
///
/// - **Layer 2 (Native OS Prompt)**: Only if a user provides a positive signal in
///   Layer 1 does the application "spend" its review opportunity by calling the
///   native API. This event is logged by setting [wasStoreReviewRequested] to
///   `true`. After this, the corresponding `UserFeedDecoratorStatus` is marked as
///   completed to **permanently prevent the internal prompt from appearing
///   again for this user.**
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class AppReview extends Equatable {
  /// {@macro app_review}
  const AppReview({
    required this.id,
    required this.userId,
    required this.feedback,
    required this.createdAt,
    required this.updatedAt,
    this.wasStoreReviewRequested = false,
    this.feedbackDetails,
  });

  /// Creates an [AppReview] from JSON data.
  factory AppReview.fromJson(Map<String, dynamic> json) =>
      _$AppReviewFromJson(json);

  /// The unique identifier for this app review record.
  final String id;

  /// The ID of the user providing the feedback.
  final String userId;

  /// The user's answer to the private feedback prompt.
  final AppReviewFeedback feedback;

  /// The timestamp when this review record was created (i.e., when the user
  /// answered the initial prompt).
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The timestamp when this review record was last updated.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// A flag indicating whether a native OS store review has been requested for
  /// this user.
  ///
  /// This is set to `true` after a user provides a `positive` [feedback]
  /// and the application calls the native review API. It acts as a permanent
  /// marker, ensuring the corresponding `UserFeedDecoratorStatus` can be marked
  /// as completed to prevent ever showing the internal prompt again.
  @JsonKey(defaultValue: false)
  final bool wasStoreReviewRequested;

  /// Optional text details provided by the user, typically when giving
  /// negative feedback.
  ///
  final String? feedbackDetails;

  /// Converts this [AppReview] instance to JSON data.
  Map<String, dynamic> toJson() => _$AppReviewToJson(this);

  @override
  List<Object?> get props => [
    id,
    userId,
    feedback,
    createdAt,
    updatedAt,
    wasStoreReviewRequested,
    feedbackDetails,
  ];

  /// Creates a copy of this [AppReview] with updated values.
  AppReview copyWith({
    String? id,
    String? userId,
    AppReviewFeedback? feedback,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? wasStoreReviewRequested,
    ValueWrapper<String?>? feedbackDetails,
  }) {
    return AppReview(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      feedback: feedback ?? this.feedback,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      wasStoreReviewRequested:
          wasStoreReviewRequested ?? this.wasStoreReviewRequested,
      feedbackDetails: feedbackDetails != null
          ? feedbackDetails.value
          : this.feedbackDetails,
    );
  }
}
