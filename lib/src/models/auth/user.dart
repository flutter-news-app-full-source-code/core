import 'package:core/src/enums/subscription/access_tier.dart';
import 'package:core/src/enums/user_role.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user.g.dart';

/// {@template user}
/// Represents an authenticated user of the application.
///
/// This model decouples identity ([role]) from entitlement ([tier]).
/// - [role]: Determines administrative permissions (e.g., admin, publisher).
/// - [tier]: Determines feature access and limits (e.g., standard, premium).
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    required this.email,
    required this.role,
    required this.tier,
    this.name,
    this.photoUrl,
    this.isAnonymous = false,
  });

  /// Creates a [User] from JSON data.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// The unique identifier for the user.
  final String id;

  /// The user's email address.
  ///
  /// For anonymous users, this may be a placeholder or generated ID.
  final String email;

  /// The user's display name.
  final String? name;

  /// The URL to the user's profile photo.
  final String? photoUrl;

  /// The user's identity role (e.g., admin, user).
  ///
  /// This governs administrative permissions, not feature entitlements.
  final UserRole role;

  /// The user's subscription tier (e.g., standard, premium).
  ///
  /// This governs access to paid features and usage limits.
  final AccessTier tier;

  /// Indicates if this is an anonymous account.
  final bool isAnonymous;

  /// Converts this [User] instance to JSON data.
  Map<String, dynamic> toJson() => _$UserToJson(this);

  /// Creates a copy of this [User] with updated values.
  User copyWith({
    String? id,
    String? email,
    String? name,
    String? photoUrl,
    UserRole? role,
    AccessTier? tier,
    bool? isAnonymous,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
      role: role ?? this.role,
      tier: tier ?? this.tier,
      isAnonymous: isAnonymous ?? this.isAnonymous,
    );
  }

  @override
  List<Object?> get props => [
    id,
    email,
    name,
    photoUrl,
    role,
    tier,
    isAnonymous,
  ];
}
