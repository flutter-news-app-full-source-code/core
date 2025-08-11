import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_feed_decorator_status.g.dart';

/// {@template user_feed_decorator_status}
/// Tracks the status of a specific feed decorator for a user.
///
/// This includes when the decorator was last shown and whether it has been
/// completed, allowing for conditional display logic in the feed.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserFeedDecoratorStatus extends Equatable {
  /// {@macro user_feed_decorator_status}
  const UserFeedDecoratorStatus({required this.isCompleted, this.lastShownAt});

  /// Creates a UserFeedDecoratorStatus from JSON data.
  factory UserFeedDecoratorStatus.fromJson(Map<String, dynamic> json) =>
      _$UserFeedDecoratorStatusFromJson(json);

  /// The date and time the user was last shown this specific feed decorator.
  ///
  /// A `null` value indicates the user has never been shown this decorator.
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? lastShownAt;

  /// A flag indicating whether the user has completed this action.
  ///
  /// If `true`, the action should not be shown again.
  final bool isCompleted;

  /// Determines if the decorator can be shown based on its status and cooldown.
  bool canBeShown({required int daysBetweenViews}) {
    // If the user has already completed this action, it cannot be shown.
    if (isCompleted) return false;

    // If the user has never seen this action before, it can be shown.
    final lastShown = lastShownAt;
    if (lastShown == null) return true;

    // Calculate the difference in days and check against the cooldown.
    return DateTime.now().difference(lastShown).inDays >= daysBetweenViews;
  }

  /// Converts this UserFeedDecoratorStatus instance to JSON data.
  Map<String, dynamic> toJson() => _$UserFeedDecoratorStatusToJson(this);

  @override
  List<Object?> get props => [lastShownAt, isCompleted];

  /// Creates a copy of this [UserFeedDecoratorStatus] but with the given fields
  /// replaced with the new values.
  UserFeedDecoratorStatus copyWith({DateTime? lastShownAt, bool? isCompleted}) {
    return UserFeedDecoratorStatus(
      lastShownAt: lastShownAt ?? this.lastShownAt,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}

// Helper function for parsing DateTime from a nullable string.
DateTime? _dateTimeFromJson(String? dateString) =>
    dateString != null ? DateTime.parse(dateString) : null;

// Helper function for serializing a nullable DateTime to an ISO 8601 string.
String? _dateTimeToJson(DateTime? dateTime) => dateTime?.toIso8601String();
