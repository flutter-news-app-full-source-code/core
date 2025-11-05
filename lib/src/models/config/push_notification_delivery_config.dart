import 'package:core/src/enums/app_user_role.dart';
import 'package:core/src/models/remote_config/notification_delivery_role_config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part '../../../../push_notification_delivery_config.g.dart';

/// {@template push_notification_delivery_config}
/// Defines the configuration for a single push notification delivery type, such as
/// 'dailyDigest' or 'breakingOnly'.
///
/// This model uses a `visibleTo` map to specify which user roles can see and
/// use this delivery type, and what their specific limits are. If a role is
/// not present in the map, that delivery type will be unavailable to them.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationDeliveryConfig extends Equatable {
  /// {@macro push_notification_delivery_config}
  const PushNotificationDeliveryConfig({required this.visibleTo});

  /// Creates a [PushNotificationDeliveryConfig] from JSON data.
  factory PushNotificationDeliveryConfig.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationDeliveryConfigFromJson(json);

  /// A map that defines the visibility and limits for this delivery type
  /// based on user roles.
  ///
  /// The key is the [AppUserRole], and the value is the role-specific
  /// configuration, including subscription limits.
  final Map<AppUserRole, NotificationDeliveryRoleConfig> visibleTo;

  /// Converts this instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationDeliveryConfigToJson(this);

  @override
  List<Object> get props => [visibleTo];

  /// Creates a copy of this instance with the given fields replaced.
  PushNotificationDeliveryConfig copyWith({
    Map<AppUserRole, NotificationDeliveryRoleConfig>? visibleTo,
  }) {
    return PushNotificationDeliveryConfig(visibleTo: visibleTo ?? this.visibleTo);
  }
}
