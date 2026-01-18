import 'package:json_annotation/json_annotation.dart';

/// {@template reward_type}
/// Defines the specific types of rewards a user can earn through actions
/// (e.g., watching ads).
/// {@endtemplate}
enum RewardType {
  /// Grants a temporary ad-free experience across the application.
  @JsonValue('adFree')
  adFree,

  /// Grants access to daily digest push notifications.
  @JsonValue('dailyDigest')
  dailyDigest,
}
