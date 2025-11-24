import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'push_notification_payload.g.dart';

/// {@template push_notification_payload}
/// Represents the generic structure of a push notification message.
///
/// This model defines the content of a notification, such as its title and
/// image, and includes a flexible `data` map for custom payloads, typically
/// used for deep-linking or passing additional information to the client app.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationPayload extends Equatable {
  /// {@macro push_notification_payload}
  const PushNotificationPayload({
    required this.title,
    required this.data,
    this.imageUrl,
  });

  /// Creates a [PushNotificationPayload] from JSON data.
  factory PushNotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationPayloadFromJson(json);

  /// The title of the notification.
  final String title;

  /// An optional URL for an image to be displayed in the notification.
  final String? imageUrl;

  /// A map of custom key-value data to be sent with the notification.
  ///
  /// This is commonly used for deep-linking, allowing the app to navigate to
  /// a specific screen or content when the notification is tapped.
  /// For example: `{'contentType': 'headline', 'id': 'headline-123'}`.
  final Map<String, dynamic> data;

  /// Converts this [PushNotificationPayload] instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationPayloadToJson(this);

  @override
  List<Object?> get props => [title, imageUrl, data];

  /// Creates a copy of this [PushNotificationPayload] but with the given fields
  /// replaced with the new values.
  PushNotificationPayload copyWith({
    String? title,
    String? imageUrl,
    Map<String, dynamic>? data,
  }) {
    return PushNotificationPayload(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      data: data ?? this.data,
    );
  }
}
