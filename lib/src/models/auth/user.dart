import 'package:equatable/equatable.dart';
import 'package:ht_shared/ht_shared.dart';
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
  /// [email], and [createdAt]. The [feedActionStatus] tracks user
  /// interactions with in-feed actions and is guaranteed to be complete for
  /// all [FeedActionType] values.
  const User({
    required this.id,
    required this.appRole,
    required this.dashboardRole,
    required this.email,
    required this.createdAt,
    required this.feedActionStatus,
  });

  /// Creates a User from JSON data.
  ///
  /// The `feedActionStatus` map is automatically hydrated with default
  /// values for any missing [FeedActionType] keys to ensure completeness.
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

  /// A map tracking the status of various in-feed actions for the user.
  ///
  /// The key is a [FeedActionType], and the value is the
  /// [UserFeedActionStatus] for that action. This map is guaranteed to
  /// contain an entry for every value in the [FeedActionType] enum.
  @JsonKey(
    fromJson: _feedActionStatusFromJson,
    toJson: _feedActionStatusToJson,
    // The default value is now handled by the `_feedActionStatusFromJson`.
  )
  final Map<FeedActionType, UserFeedActionStatus> feedActionStatus;

  /// Converts this User instance to JSON data.
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
    id,
    email,
    appRole,
    dashboardRole,
    createdAt,
    feedActionStatus,
  ];

  @override
  String toString() {
    return 'User(id: $id, email: $email, appRole: $appRole, '
        'dashboardRole: $dashboardRole, createdAt: $createdAt, '
        'feedActionStatus: $feedActionStatus)';
  }

  /// Creates a copy of this [User] but with the given fields replaced with
  /// the new values.
  User copyWith({
    String? id,
    String? email,
    AppUserRole? appRole,
    DashboardUserRole? dashboardRole,
    DateTime? createdAt,
    Map<FeedActionType, UserFeedActionStatus>? feedActionStatus,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      appRole: appRole ?? this.appRole,
      dashboardRole: dashboardRole ?? this.dashboardRole,
      createdAt: createdAt ?? this.createdAt,
      feedActionStatus: feedActionStatus ?? this.feedActionStatus,
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

/// Deserializes the feed action status map from JSON and ensures it's complete.
///
/// This function takes the raw JSON map (which may be incomplete) and
/// "hydrates" it by adding a default [UserFeedActionStatus] for any
/// [FeedActionType] that is not present in the incoming data. This guarantees
/// that the `User` model always has a status for every possible action,
/// preventing null-check errors in the application logic.
///
/// The [json] parameter is expected to be a `Map<String, dynamic>` where
/// keys are the string names of `FeedActionType` enum values.
Map<FeedActionType, UserFeedActionStatus> _feedActionStatusFromJson(
  Map<String, dynamic> json,
) {
  // First, deserialize the existing data from JSON into a type-safe map.
  // This map will only contain entries that were present in the JSON.
  final existingStatuses = json.map(
    (key, value) {
      // Find the enum value that matches the string key from the JSON.
      final actionType = FeedActionType.values.byName(key);
      return MapEntry(
        actionType,
        UserFeedActionStatus.fromJson(value as Map<String, dynamic>),
      );
    },
  );

  // Now, create the final, complete map by iterating over all possible
  // FeedActionType enum values and providing a default where one doesn't exist.
  return Map.fromEntries(
    FeedActionType.values.map(
      (type) => MapEntry(
        type,
        // Use the status from JSON if it exists, otherwise use a default.
        existingStatuses[type] ??
            const UserFeedActionStatus(isCompleted: false),
      ),
    ),
  );
}

/// Serializes the feed action status map to JSON.
///
/// Converts the type-safe `Map<FeedActionType, UserFeedActionStatus>` into a
/// `Map<String, dynamic>` suitable for JSON encoding by using the enum's
/// `name` property as the key.
Map<String, dynamic> _feedActionStatusToJson(
  Map<FeedActionType, UserFeedActionStatus> feedActionStatus,
) {
  return feedActionStatus.map(
    (key, value) => MapEntry(key.name, value.toJson()),
  );
}
