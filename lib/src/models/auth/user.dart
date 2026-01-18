import 'package:core/src/enums/enums.dart';
import 'package:core/src/utils/date_time_converter.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user.g.dart';

/// {@template user}
/// Represents an authenticated user of the application.
///
/// ### Architecture Note: Identity vs. Entitlement
/// This model strictly separates three distinct concepts:
///
/// 1. **Identity (`isAnonymous`)**:
///    - `true`: Temporary guest account.
///    - `false`: Permanent registered account (email/social).
/// 2. **Permissions (`role`)**:
///    - Determines *administrative* capabilities (e.g., Admin, Publisher).
/// 3. **Entitlement (`tier`)**:
///    - Determines *feature access* and usage limits (e.g., Guest, Standard, Premium).
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
    required this.createdAt,
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

  /// The user's administrative role.
  ///
  /// Use this for access control (e.g., "Can this user access the dashboard?").
  final UserRole role;

  /// The user's service entitlement level.
  ///
  /// Use this for feature gating (e.g., "Can this user see ads?").
  final AccessTier tier;

  /// The timestamp when the user account was created.
  @DateTimeConverter()
  final DateTime createdAt;

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
    DateTime? createdAt,
    bool? isAnonymous,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
      role: role ?? this.role,
      tier: tier ?? this.tier,
      createdAt: createdAt ?? this.createdAt,
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
    createdAt,
    isAnonymous,
  ];
}
