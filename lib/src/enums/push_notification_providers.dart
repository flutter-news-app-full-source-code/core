import 'package:json_annotation/json_annotation.dart';

/// {@template push_notification_providers}
/// Defines the available push notification service providers.
///
/// This allows the backend to select the appropriate client for sending a
/// notification and allows devices to register themselves with the provider
/// they are configured to use.
/// {@endtemplate}
@JsonEnum()
enum PushNotificationProviders {
  /// Firebase Cloud Messaging.
  @JsonValue('firebase')
  firebase,

  /// OneSignal.
  @JsonValue('oneSignal')
  oneSignal,
}
