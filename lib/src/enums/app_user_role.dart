import 'package:json_annotation/json_annotation.dart';

/// Defines the roles for users within the news application.
///
/// These roles are specific to the application's features and content access.
@JsonEnum()
enum AppUserRole {
  /// Represents a user with premium access,
  /// granting full access to all features and content.
  @JsonValue('premiumUser')
  premiumUser,

  /// Represents a standard user with basic access to the application's
  /// features and content.
  @JsonValue('standardUser')
  standardUser,

  /// Represents a guest user with limited access,
  /// typically for previewing content.
  @JsonValue('guestUser')
  guestUser,
}
