import 'package:json_annotation/json_annotation.dart';

/// Defines the operational status of the application as determined by remote
/// configuration.

enum RemoteAppStatus {
  /// The application is fully operational.
  active,

  /// The application is temporarily down for maintenance.
  maintenance,

  /// The application or this version of it is permanently disabled.
  disabled,
}
