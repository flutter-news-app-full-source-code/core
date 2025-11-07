import 'package:core/src/enums/device_platform.dart';
import 'package:core/src/enums/push_notification_provider.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'push_notification_device.g.dart';

/// {@template push_notification_device}
/// Represents a user's device that is registered for push notifications.
///
/// This model stores the device token, the push notification provider, the
/// platform (iOS/Android), and links it to a specific user.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationDevice extends Equatable {
  /// {@macro push_notification_device}
  const PushNotificationDevice({
    required this.id,
    required this.userId,
    required this.token,
    required this.provider,
    required this.platform,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Creates a [PushNotificationDevice] from JSON data.
  factory PushNotificationDevice.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationDeviceFromJson(json);

  /// The unique identifier for this device registration.
  final String id;

  /// The ID of the user who owns this device.
  final String userId;

  /// The unique token issued by the push notification provider for this device.
  final String token;

  /// The push notification provider (e.g., Firebase, OneSignal).
  final PushNotificationProvider provider;

  /// The mobile operating system of the device.
  final DevicePlatform platform;

  /// The timestamp when this device was first registered.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The timestamp when this device registration was last updated.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime updatedAt;

  /// Converts this [PushNotificationDevice] instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationDeviceToJson(this);

  @override
  List<Object> get props => [
    id,
    userId,
    token,
    provider,
    platform,
    createdAt,
    updatedAt,
  ];

  /// Creates a copy of this [PushNotificationDevice] but with the given fields replaced with
  /// the new values.
  PushNotificationDevice copyWith({
    String? id,
    String? userId,
    String? token,
    PushNotificationProvider? provider,
    DevicePlatform? platform,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PushNotificationDevice(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      token: token ?? this.token,
      provider: provider ?? this.provider,
      platform: platform ?? this.platform,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
