import 'package:json_annotation/json_annotation.dart';

/// Defines the administrative permissions and functional role of a user.
///
/// This is distinct from `AccessTier`, which governs feature
/// entitlements.
@JsonEnum()
enum UserRole {
  /// A user with full administrative access.
  admin,

  /// A user with content management permissions.
  publisher,

  /// A standard application user with no administrative rights.
  user,
}
