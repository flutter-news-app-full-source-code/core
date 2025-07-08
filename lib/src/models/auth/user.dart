import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/enums/app_user_role.dart';
import 'package:ht_shared/src/enums/dashboard_user_role.dart';
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
  /// [email], [createdAt], and [lastAccountActionShownAt].
  const User({
    required this.id,
    required this.appRole,
    required this.dashboardRole,
    required this.email,
    required this.createdAt,
    required this.lastAccountActionShownAt,
  });

  /// Creates a User from JSON data.
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

  /// The date and time the user was last shown an engagement.
  @JsonKey(
    name: 'lastEngagementShownAt',
    fromJson: _dateTimeFromJson,
    toJson: _dateTimeToJson,
  )
  final DateTime lastAccountActionShownAt;

  /// Converts this User instance to JSON data.
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
    id,
    email,
    appRole,
    dashboardRole,
    createdAt,
    lastAccountActionShownAt,
  ];

  @override
  String toString() {
    return 'User(id: $id, email: $email, appRole: $appRole, '
        'dashboardRole: $dashboardRole, createdAt: $createdAt, '
        'lastAccountActionShownAt: $lastAccountActionShownAt)';
  }

  /// Creates a copy of this [User] but with the given fields replaced with
  /// the new values.
  User copyWith({
    String? id,
    String? email,
    AppUserRole? appRole,
    DashboardUserRole? dashboardRole,
    DateTime? createdAt,
    DateTime? lastAccountActionShownAt,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      appRole: appRole ?? this.appRole,
      dashboardRole: dashboardRole ?? this.dashboardRole,
      createdAt: createdAt ?? this.createdAt,
      lastAccountActionShownAt:
          lastAccountActionShownAt ?? this.lastAccountActionShownAt,
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
