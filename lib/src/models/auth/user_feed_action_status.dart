import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_feed_action_status.g.dart';

/// {@template user_feed_action_status}
/// Tracks the status of a specific feed action for a user.
///
/// This includes when the action was last shown and whether it has been
/// completed, allowing for conditional display logic in the feed.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserFeedActionStatus extends Equatable {
  /// {@macro user_feed_action_status}
  const UserFeedActionStatus({this.lastShownAt, required this.isCompleted});

  /// Creates a UserFeedActionStatus from JSON data.
  factory UserFeedActionStatus.fromJson(Map<String, dynamic> json) =>
      _$UserFeedActionStatusFromJson(json);

  /// The date and time the user was last shown this specific feed action.
  ///
  /// A `null` value indicates the user has never been shown this action.
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? lastShownAt;

  /// A flag indicating whether the user has completed this action.
  ///
  /// If `true`, the action should not be shown again.
  final bool isCompleted;

  /// Converts this UserFeedActionStatus instance to JSON data.
  Map<String, dynamic> toJson() => _$UserFeedActionStatusToJson(this);

  @override
  List<Object?> get props => [lastShownAt, isCompleted];

  /// Creates a copy of this [UserFeedActionStatus] but with the given fields
  /// replaced with the new values.
  UserFeedActionStatus copyWith({DateTime? lastShownAt, bool? isCompleted}) {
    return UserFeedActionStatus(
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
