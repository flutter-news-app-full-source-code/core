import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/auth/user_feed_decorator_status.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user.g.dart';

/// Represents a user within the system.
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class User extends Equatable {
  /// Creates a new [User] instance.
  ///
  /// Requires a unique [id], an [appRole], a [dashboardRole],
  /// [email], and [createdAt]. The [feedDecoratorStatus] tracks user
  /// interactions with in-feed actions and is guaranteed to be complete for
  /// all [FeedDecoratorType] values.
  const User({
    required this.id,
    required this.appRole,
    required this.dashboardRole,
    required this.email,
    required this.createdAt,
    required this.feedDecoratorStatus,
  });

  /// Creates a User from JSON data.
  ///
  /// The `feedDecoratorStatus` map is automatically hydrated with default
  /// values for any missing [FeedDecoratorType] keys to ensure completeness.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// The unique identifier for the user (e.g., a UUID).
  final String id;

  /// The user's email address. This is required.
  final String email;

  /// The application-specific role of the user.
  final AppUserRole appRole;

  /// The dashboard-specific role of the user.
  final DashboardUserRole dashboardRole;

  /// The date and time the user account was created.
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime createdAt;

  /// A map tracking the status of various in-feed decorators for the user.
  ///
  /// The key is a [FeedDecoratorType], and the value is the
  /// [UserFeedDecoratorStatus] for that decorator. This map is guaranteed to
  /// contain an entry for every value in the [FeedDecoratorType] enum.
  @JsonKey(
    fromJson: _feedDecoratorStatusFromJson,
    toJson: _feedDecoratorStatusToJson,
  )
  final Map<FeedDecoratorType, UserFeedDecoratorStatus> feedDecoratorStatus;

  /// Converts this User instance to JSON data.
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
    id,
    email,
    appRole,
    dashboardRole,
    createdAt,
    feedDecoratorStatus,
  ];

  @override
  String toString() {
    return 'User(id: $id, email: $email, appRole: $appRole, '
        'dashboardRole: $dashboardRole, createdAt: $createdAt, '
        'feedDecoratorStatus: $feedDecoratorStatus)';
  }

  /// Creates a copy of this [User] but with the given fields replaced with
  /// the new values.
  User copyWith({
    String? id,
    String? email,
    AppUserRole? appRole,
    DashboardUserRole? dashboardRole,
    DateTime? createdAt,
    Map<FeedDecoratorType, UserFeedDecoratorStatus>? feedDecoratorStatus,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      appRole: appRole ?? this.appRole,
      dashboardRole: dashboardRole ?? this.dashboardRole,
      createdAt: createdAt ?? this.createdAt,
      feedDecoratorStatus: feedDecoratorStatus ?? this.feedDecoratorStatus,
    );
  }
}

// Helper function for parsing DateTime
DateTime _dateTimeFromJson(String dateString) {
  return DateTime.parse(dateString);
}

// Helper function for serializing DateTime to ISO 8601 string
String _dateTimeToJson(DateTime dateTime) {
  return dateTime.toIso8601String();
}

/// Deserializes the feed decorator status map from JSON and ensures it's complete.
Map<FeedDecoratorType, UserFeedDecoratorStatus> _feedDecoratorStatusFromJson(
  Map<String, dynamic> json,
) {
  final existingStatuses = json.map((key, value) {
    final decoratorType = FeedDecoratorType.values.byName(key);
    return MapEntry(
      decoratorType,
      UserFeedDecoratorStatus.fromJson(value as Map<String, dynamic>),
    );
  });

  return Map.fromEntries(
    FeedDecoratorType.values.map(
      (type) => MapEntry(
        type,
        existingStatuses[type] ??
            const UserFeedDecoratorStatus(isCompleted: false),
      ),
    ),
  );
}

/// Serializes the feed decorator status map to JSON.
Map<String, dynamic> _feedDecoratorStatusToJson(
  Map<FeedDecoratorType, UserFeedDecoratorStatus> feedDecoratorStatus,
) {
  return feedDecoratorStatus.map(
    (key, value) => MapEntry(key.name, value.toJson()),
  );
}
