import 'package:core/src/enums/dismissible_hint_type.dart';
import 'package:core/src/enums/feed_decorator_type.dart';
import 'package:core/src/models/auth/user.dart';
import 'package:core/src/models/auth/user_feed_decorator_status.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_context.g.dart';

/// {@template user_context}
/// Represents the mutable, interaction-based state of a user.
///
/// This model is distinct from the [User] identity model. It stores ephemeral
/// or behavioral data such as "has seen onboarding", "feed decorator status",
/// or "dismissed hints".
///
/// This data is typically stored in a separate database collection/table
/// keyed by the [userId].
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserContext extends Equatable {
  /// {@macro user_context}
  const UserContext({
    required this.userId,
    required this.feedDecoratorStatus,
    this.hasCompletedOnboarding = false,
    this.lastSeenAppVersion,
    this.dismissedHints = const {},
  });

  /// Creates a [UserContext] from JSON data.
  factory UserContext.fromJson(Map<String, dynamic> json) =>
      _$UserContextFromJson(json);

  /// The ID of the user this context belongs to.
  final String userId;

  /// A map tracking the status of various in-feed decorators for the user.
  ///
  /// The key is a [FeedDecoratorType], and the value is the
  /// [UserFeedDecoratorStatus] for that decorator.
  @JsonKey(
    fromJson: _feedDecoratorStatusFromJson,
    toJson: _feedDecoratorStatusToJson,
  )
  final Map<FeedDecoratorType, UserFeedDecoratorStatus> feedDecoratorStatus;

  /// Indicates whether the user has completed the initial onboarding flow.
  final bool hasCompletedOnboarding;

  /// The version string of the application (e.g., "1.2.0") that the user
  /// last opened.
  ///
  /// Used to determine if "What's New" dialogs should be shown.
  final String? lastSeenAppVersion;

  /// A set of UI hints that the user has explicitly dismissed or interacted with.
  final Set<DismissibleHintType> dismissedHints;

  /// Converts this [UserContext] instance to JSON data.
  Map<String, dynamic> toJson() => _$UserContextToJson(this);

  /// Creates a copy of this [UserContext] with updated values.
  UserContext copyWith({
    String? userId,
    Map<FeedDecoratorType, UserFeedDecoratorStatus>? feedDecoratorStatus,
    bool? hasCompletedOnboarding,
    String? lastSeenAppVersion,
    Set<DismissibleHintType>? dismissedHints,
  }) {
    return UserContext(
      userId: userId ?? this.userId,
      feedDecoratorStatus: feedDecoratorStatus ?? this.feedDecoratorStatus,
      hasCompletedOnboarding:
          hasCompletedOnboarding ?? this.hasCompletedOnboarding,
      lastSeenAppVersion: lastSeenAppVersion ?? this.lastSeenAppVersion,
      dismissedHints: dismissedHints ?? this.dismissedHints,
    );
  }

  @override
  List<Object?> get props => [
    userId,
    feedDecoratorStatus,
    hasCompletedOnboarding,
    lastSeenAppVersion,
    dismissedHints,
  ];
}

Map<FeedDecoratorType, UserFeedDecoratorStatus> _feedDecoratorStatusFromJson(
  Map<String, dynamic> json,
) => json.map(
  (k, v) => MapEntry(
    FeedDecoratorType.values.byName(k),
    UserFeedDecoratorStatus.fromJson(v as Map<String, dynamic>),
  ),
);

Map<String, dynamic> _feedDecoratorStatusToJson(
  Map<FeedDecoratorType, UserFeedDecoratorStatus> status,
) => status.map((k, v) => MapEntry(k.name, v.toJson()));
