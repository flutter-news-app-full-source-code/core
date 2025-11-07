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
  /// This uses custom fromJson/toJson helpers to handle the polymorphic nature
  /// of [PushNotificationProviderConfig] within a map structure, which is not
  /// natively supported by `json_serializable`.
  @JsonKey(fromJson: _providerConfigsFromJson, toJson: _providerConfigsToJson)
  final Map<PushNotificationProvider, PushNotificationProviderConfig>
  providerConfigs;

  /// A map to globally enable or disable each specific notification type
  /// and define its role-based limits using the `visibleTo` pattern.
  final Map<
    PushNotificationSubscriptionDeliveryType,
    PushNotificationDeliveryConfig
  >
  deliveryConfigs;

  /// Converts this [PushNotificationConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationConfigToJson(this);

  /// A custom deserializer for the `providerConfigs` map.
  ///
  /// This function manually iterates through the incoming JSON map, converting
  /// string keys into [PushNotificationProvider] enum values and delegating
  /// the value deserialization to the polymorphic
  /// [PushNotificationProviderConfig.fromJson] factory.
  static Map<PushNotificationProvider, PushNotificationProviderConfig>
  _providerConfigsFromJson(Map<String, dynamic> json) {
    return json.map((key, value) {
      final provider = PushNotificationProvider.values.byName(key);
      return MapEntry(
        provider,
        PushNotificationProviderConfig.fromJson(value as Map<String, dynamic>),
      );
    });
  }

  /// A custom serializer for the `providerConfigs` map.
  ///
  /// This function manually iterates through the map, converting the
  /// [PushNotificationProvider] enum keys into strings and delegating the
  /// value serialization to the polymorphic
  /// [PushNotificationProviderConfig.toJson] static method.
  static Map<String, dynamic> _providerConfigsToJson(
    Map<PushNotificationProvider, PushNotificationProviderConfig> configs,
  ) {
    return configs.map(
      (key, value) =>
          MapEntry(key.name, PushNotificationProviderConfig.toJson(value)),
    );
  }

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
    Map<
      PushNotificationSubscriptionDeliveryType,
      PushNotificationDeliveryConfig
    >?
    deliveryConfigs,
  }) {
    return PushNotificationConfig(
      enabled: enabled ?? this.enabled,
      primaryProvider: primaryProvider ?? this.primaryProvider,
      providerConfigs: providerConfigs ?? this.providerConfigs,
      deliveryConfigs: deliveryConfigs ?? this.deliveryConfigs,
    );
  }
}
