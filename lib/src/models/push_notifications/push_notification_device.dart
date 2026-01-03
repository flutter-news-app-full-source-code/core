import 'package:core/src/enums/device_platform.dart';
import 'package:core/src/enums/push_notification_providers.dart';
import 'package:core/src/utils/date_time_converter.dart';
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
    required this.platform,
    required this.providerTokens,
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

  /// The mobile operating system of the device.
  final DevicePlatform platform;

  /// A map of push notification provider tokens for this device.
  @JsonKey(fromJson: _providerTokensFromJson, toJson: _providerTokensToJson)
  final Map<PushNotificationProviders, String> providerTokens;

  /// The timestamp when this device was first registered.
  @DateTimeConverter()
  final DateTime createdAt;

  /// The timestamp when this device registration was last updated.
  @DateTimeConverter()
  final DateTime updatedAt;

  /// Converts this [PushNotificationDevice] instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationDeviceToJson(this);

  /// Custom deserializer for the `providerTokens` map.
  static Map<PushNotificationProviders, String> _providerTokensFromJson(
    Map<String, dynamic> json,
  ) {
    return json.map(
      (key, value) => MapEntry(
        PushNotificationProviders.values.byName(key),
        value as String,
      ),
    );
  }

  /// Custom serializer for the `providerTokens` map.
  static Map<String, dynamic> _providerTokensToJson(
    Map<PushNotificationProviders, String> tokens,
  ) {
    return tokens.map((key, value) => MapEntry(key.name, value));
  }

  @override
  List<Object> get props => [
    id,
    userId,
    platform,
    providerTokens,
    createdAt,
    updatedAt,
  ];

  /// Creates a copy of this [PushNotificationDevice] but with the given fields replaced with
  /// the new values.
  PushNotificationDevice copyWith({
    String? id,
    String? userId,
    DevicePlatform? platform,
    Map<PushNotificationProviders, String>? providerTokens,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PushNotificationDevice(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      platform: platform ?? this.platform,
      providerTokens: providerTokens ?? this.providerTokens,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
