import 'package:core/src/models/push_notifications/push_notification_payload.dart';
import 'package:core/src/utils/json_helpers.dart';
import 'package:core/src/utils/nullable_date_time_converter.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'in_app_notification.g.dart';

/// {@template in_app_notification}
/// Represents a stateful wrapper for a received push notification, designed
/// for persistence in an in-app notification center or "inbox".
///
/// This model tracks the notification's content (`payload`) as well as its
/// read status (`readAt`), allowing the UI to distinguish between read and
/// unread notifications.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InAppNotification extends Equatable {
  /// {@macro in_app_notification}
  const InAppNotification({
    required this.id,
    required this.userId,
    required this.payload,
    required this.createdAt,
    this.readAt,
  });

  /// Creates an [InAppNotification] from JSON data.
  factory InAppNotification.fromJson(Map<String, dynamic> json) =>
      _$InAppNotificationFromJson(json);

  /// The unique identifier for this specific notification instance.
  final String id;

  /// The ID of the user who received this notification.
  final String userId;

  /// The original content of the push notification.
  final PushNotificationPayload payload;

  /// The timestamp when the notification was created/received.
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// The timestamp when the user marked this notification as read.
  ///
  /// A `null` value indicates the notification is unread.
  @NullableDateTimeConverter()
  final DateTime? readAt;

  /// A convenience getter to determine if the notification has been read.
  bool get isRead => readAt != null;

  /// Converts this [InAppNotification] instance to JSON data.
  Map<String, dynamic> toJson() => _$InAppNotificationToJson(this);

  @override
  List<Object?> get props => [id, userId, payload, createdAt, readAt];

  /// Creates a copy of this [InAppNotification] but with the given fields
  /// replaced with the new values.
  InAppNotification copyWith({
    String? id,
    String? userId,
    PushNotificationPayload? payload,
    DateTime? createdAt,
    DateTime? readAt,
  }) {
    return InAppNotification(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      payload: payload ?? this.payload,
      createdAt: createdAt ?? this.createdAt,
      readAt: readAt ?? this.readAt,
    );
  }
}
