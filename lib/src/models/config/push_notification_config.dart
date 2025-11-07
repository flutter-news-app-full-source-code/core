import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/config/config.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'push_notification_config.g.dart';

/// {@template push_notification_config}
/// Defines the global configuration for the push notification system.
///
/// This model is part of the overall `RemoteConfig` and allows for remotely
/// managing all aspects of push notifications, including provider credentials,
/// feature availability, and user-specific limits.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationConfig extends Equatable {
  /// {@macro push_notification_config}
  const PushNotificationConfig({
    required this.enabled,
    required this.primaryProvider,
    required this.providerConfigs,
    required this.deliveryConfigs,
  });

  /// Creates a [PushNotificationConfig] from JSON data.
  factory PushNotificationConfig.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationConfigFromJson(json);

  /// A global switch to enable or disable the entire push notification system.
  ///
  /// If `false`, no notification-related logic should be executed by clients
  final bool enabled;

  /// The primary push notification service provider to be used by the system.
  ///
  /// This allows for dynamically switching between providers like Firebase
  final PushNotificationProvider primaryProvider;

  /// A map holding the credentials for each potential push provider.
  ///
  /// The key is the provider type, and the value is the corresponding
  /// polymorphic configuration object (e.g., [FirebaseProviderConfig]).
  @JsonKey(
    toJson: PushNotificationProviderConfig.toJson,
    fromJson: PushNotificationProviderConfig.fromJson,
  )
  final Map<PushNotificationProvider, PushNotificationProviderConfig>
  providerConfigs;

  /// A map to globally enable or disable each specific notification type
  /// and define its role-based limits using the `visibleTo` pattern.
  final Map<PushNotificationSubscriptionDeliveryType, PushNotificationDeliveryConfig>
  deliveryConfigs;

  /// Converts this [PushNotificationConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationConfigToJson(this);

  @override
  List<Object> get props => [
    enabled,
    primaryProvider,
    providerConfigs,
    deliveryConfigs,
  ];

  /// Creates a copy of this [PushNotificationConfig] but with the given fields
  /// replaced with the new values.
  PushNotificationConfig copyWith({
    bool? enabled,
    PushNotificationProvider? primaryProvider,
    Map<PushNotificationProvider, PushNotificationProviderConfig>?
    providerConfigs,
    Map<PushNotificationSubscriptionDeliveryType, PushNotificationDeliveryConfig>? deliveryConfigs,
  }) {
    return PushNotificationConfig(
      enabled: enabled ?? this.enabled,
      primaryProvider: primaryProvider ?? this.primaryProvider,
      providerConfigs: providerConfigs ?? this.providerConfigs,
      deliveryConfigs: deliveryConfigs ?? this.deliveryConfigs,
    );
  }
}
