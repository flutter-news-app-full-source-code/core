import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// Represents an authenticated user within the system.
///
/// This model holds basic information about the user, including their
/// unique identifier, email (if available), and whether they are
/// authenticated anonymously. It also includes an [isAdmin] flag
/// to indicate administrative privileges.
@JsonSerializable()
class User extends Equatable {
  /// Creates a new [User] instance.
  ///
  /// Requires a unique [id], an [isAnonymous] flag, and an [isAdmin] flag.
  /// The [email] is optional and typically present only for non-anonymous
  /// users who have verified their email address.
  const User({
    required this.id,
    required this.isAnonymous,
    required this.isAdmin,
    this.email,
  });

  /// Creates a User from JSON data.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// The unique identifier for the user (e.g., a UUID).
  final String id;

  /// The user's email address.
  ///
  /// This will be `null` for anonymous users or users who haven't
  /// associated an email yet.
  final String? email;

  /// Indicates whether the user is authenticated anonymously.
  ///
  /// `true` if the user signed in using the anonymous flow,
  /// `false` otherwise.
  final bool isAnonymous;

  /// Indicates whether the user has administrative privileges.
  final bool isAdmin;

  /// Converts this User instance to JSON data.
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [id, email, isAnonymous, isAdmin];

  @override
  String toString() {
    return 'User(id: $id, email: $email, isAnonymous: $isAnonymous, isAdmin: $isAdmin)';
  }
}
