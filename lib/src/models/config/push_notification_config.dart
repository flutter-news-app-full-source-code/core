import 'package:core/src/enums/push_notification_provider.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'push_notification_config.g.dart';

/// {@template push_notification_config}
/// Defines the global configuration for the push notification system.
///
/// This model is part of the overall `RemoteConfig` and allows for remotely
/// enabling or disabling the entire notification feature and setting the
/// primary service provider.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationConfig extends Equatable {
  /// {@macro push_notification_config}
  const PushNotificationConfig({
    required this.enabled,
    required this.primaryProvider,
  });

  /// Creates a [PushNotificationConfig] from JSON data.
  factory PushNotificationConfig.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationConfigFromJson(json);

  /// A global switch to enable or disable the entire push notification system.
  ///
  /// If `false`, no notification-related logic should be executed by clients
  /// or the backend.
  final bool enabled;

  /// The primary push notification service provider to be used by the system.
  ///
  /// This allows for dynamically switching between providers like Firebase
  /// and OneSignal without requiring a client update.
  final PushNotificationProvider primaryProvider;

  /// Converts this [PushNotificationConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationConfigToJson(this);

  @override
  List<Object> get props => [enabled, primaryProvider];

  /// Creates a copy of this [PushNotificationConfig] but with the given fields
  /// replaced with the new values.
  PushNotificationConfig copyWith({
    bool? enabled,
    PushNotificationProvider? primaryProvider,
  }) {
    return PushNotificationConfig(
      enabled: enabled ?? this.enabled,
      primaryProvider: primaryProvider ?? this.primaryProvider,
    );
  }
}
