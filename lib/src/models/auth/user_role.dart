import 'package:json_annotation/json_annotation.dart';

/// Defines the available user roles in the system.
@JsonEnum(fieldRename: FieldRename.snake)
enum UserRole {
  /// Administrator role with full privileges.
  admin,

  /// Standard user role with regular privileges.
  standardUser,

  /// Guest user role with limited privileges.
  guestUser,
}
