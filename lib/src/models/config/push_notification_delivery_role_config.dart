import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part '../../../../push_notification_delivery_role_config.g.dart';

/// {@template push_notification_delivery_role_config}
/// Defines the role-specific settings for a single push notification delivery type.
///
/// This model holds the configuration for a specific user role (e.g.,
/// 'standardUser') in relation to a specific delivery type (e.g.,
/// 'dailyDigest'). It primarily defines the maximum number of subscriptions
/// of that type the user is allowed to create.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationDeliveryRoleConfig extends Equatable {
  /// {@macro push_notification_delivery_role_config}
  const PushNotificationDeliveryRoleConfig({required this.subscriptionLimit});

  /// Creates a [PushNotificationDeliveryRoleConfig] from JSON data.
  factory PushNotificationDeliveryRoleConfig.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationDeliveryRoleConfigFromJson(json);

  /// The maximum number of subscriptions of this specific delivery type that
  /// a user with this role is allowed to create.
  final int subscriptionLimit;

  /// Converts this instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationDeliveryRoleConfigToJson(this);

  @override
  List<Object> get props => [subscriptionLimit];

  /// Creates a copy of this instance with the given fields replaced.
  PushNotificationDeliveryRoleConfig copyWith({int? subscriptionLimit}) {
    return PushNotificationDeliveryRoleConfig(
      subscriptionLimit: subscriptionLimit ?? this.subscriptionLimit,
    );
  }
}
