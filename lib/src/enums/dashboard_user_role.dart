import 'package:json_annotation/json_annotation.dart';

/// Defines the roles for users within the dashboard application.
///
/// These roles are specific to administrative and content management tasks.
@JsonEnum()
enum DashboardUserRole {
  /// Represents an administrator with full control over the dashboard
  /// and its functionalities.
  @JsonValue('admin')
  admin,

  /// Represents a publisher with permissions to manage and publish content.
  @JsonValue('publisher')
  publisher,

  /// Represents a user with no specific dashboard access.
  @JsonValue('none')
  none,
}
