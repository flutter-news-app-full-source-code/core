import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'push_notification_delivery_config.g.dart';

/// {@template push_notification_delivery_config}
/// Defines the configuration for a single push notification delivery type,
/// such as 'dailyDigest' or 'breakingOnly'.
///
/// This model simply acts as a container for an enabled flag, allowing an
/// administrator to turn specific notification types on or off globally.
/// The role-based visibility and limits are now managed by `InterestConfig`.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationDeliveryConfig extends Equatable {
  /// {@macro push_notification_delivery_config}
  const PushNotificationDeliveryConfig({required this.enabled});

  /// Creates a [PushNotificationDeliveryConfig] from JSON data.
  factory PushNotificationDeliveryConfig.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationDeliveryConfigFromJson(json);

  /// A flag to enable or disable this specific notification type for all users.
  final bool enabled;

  /// Converts this instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationDeliveryConfigToJson(this);

  @override
  List<Object> get props => [enabled];

  /// Creates a copy of this instance with the given fields replaced.
  PushNotificationDeliveryConfig copyWith({bool? enabled}) {
    return PushNotificationDeliveryConfig(enabled: enabled ?? this.enabled);
  }
}
