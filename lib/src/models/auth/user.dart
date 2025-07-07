import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user.g.dart';

/// Represents a user within the system.
///
/// This model holds basic information about the user, including their
/// unique identifier, email (if available), and their assigned [roles].

@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class User extends Equatable {
  /// Creates a new [User] instance.
  ///
  /// Requires a unique [id] and a list of [roles].
  /// The [email] is optional and typically present only for users
  /// who have verified their email address.
  const User({
    required this.id,
    required this.roles,
    this.email,
    this.createdAt,
    this.lastAccountActionShownAt,
  });

  /// Creates a User from JSON data.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// The unique identifier for the user (e.g., a UUID).
  final String id;

  /// The user's email address.
  ///
  /// This will be `null` for users who haven't associated an email yet.
  final String? email;

  /// The roles assigned to the user (e.g., 'admin', 'premium_user').
  final List<String> roles;

  /// The date and time the user account was created.
  /// This is typically set on the backend upon user creation.
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime? createdAt;

  /// The date and time the user was last shown an engagement.
  @JsonKey(
    name: 'last_engagement_shown_at',
    fromJson: _dateTimeFromJson,
    toJson: _dateTimeToJson,
  )
  final DateTime? lastAccountActionShownAt;

  /// Converts this User instance to JSON data.
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [
    id,
    email,
    roles,
    createdAt,
    lastAccountActionShownAt,
  ];

  @override
  String toString() {
    return 'User(id: $id, email: $email, roles: $roles, createdAt: $createdAt, lastEngagementShownAt: $lastAccountActionShownAt)';
  }

  /// Creates a copy of this [User] but with the given fields replaced with
  /// the new values.
  User copyWith({
    String? id,
    String? email,
    List<String>? roles,
    DateTime? createdAt,
    DateTime? lastEngagementShownAt,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      roles: roles ?? this.roles,
      createdAt: createdAt ?? this.createdAt,
      lastAccountActionShownAt:
          lastEngagementShownAt ?? lastAccountActionShownAt,
    );
  }
}

// Helper function for parsing DateTime, returning null on error
DateTime? _dateTimeFromJson(String? dateString) {
  if (dateString == null) return null;
  return DateTime.tryParse(dateString);
}

// Helper function for serializing DateTime to ISO 8601 string
String? _dateTimeToJson(DateTime? dateTime) {
  return dateTime?.toIso8601String();
}
