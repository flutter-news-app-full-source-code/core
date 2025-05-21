import 'package:equatable/equatable.dart';
import 'package:ht_shared/src/models/user_role.dart';
import 'package:ht_shared/src/utils/json_converters.dart';

/// Represents a user within the system.
///
/// This model holds basic information about the user, including their
/// unique identifier, email (if available), and their assigned [role].
class User extends Equatable {
  /// Creates a new [User] instance.
  ///
  /// Requires a unique [id] and a [role].
  /// The [email] is optional and typically present only for users
  /// who have verified their email address.
  const User({required this.id, required this.role, this.email});

  /// Creates a User from JSON data.
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      role: userRoleFromJson(json['role'] as String),
      email: json['email'] as String?,
    );
  }

  /// The unique identifier for the user (e.g., a UUID).
  final String id;

  /// The user's email address.
  ///
  /// This will be `null` for users who haven't associated an email yet.
  final String? email;

  /// The role of the user.
  final UserRole role;

  /// Converts this User instance to JSON data.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'role': userRoleToJson(role),
    };
  }

  @override
  List<Object?> get props => [id, email, role];

  @override
  String toString() {
    return 'User(id: $id, email: $email, role: $role)';
  }
}
