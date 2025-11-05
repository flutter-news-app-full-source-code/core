import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'notification_payload.g.dart';

/// {@template notification_payload}
/// Represents the generic structure of a push notification message.
///
/// This model defines the content of a notification, such as its title and
/// body, and includes a flexible `data` map for custom payloads, typically
/// used for deep-linking or passing additional information to the client app.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class NotificationPayload extends Equatable {
  /// {@macro notification_payload}
  const NotificationPayload({
    required this.title,
    required this.body,
    required this.data,
    this.imageUrl,
  });

  /// Creates a [NotificationPayload] from JSON data.
  factory NotificationPayload.fromJson(Map<String, dynamic> json) =>
      _$NotificationPayloadFromJson(json);

  /// The title of the notification.
  final String title;

  /// The main body text of the notification.
  final String body;

  /// An optional URL for an image to be displayed in the notification.
  final String? imageUrl;

  /// A map of custom key-value data to be sent with the notification.
  ///
  /// This is commonly used for deep-linking, allowing the app to navigate to
  /// a specific screen or content when the notification is tapped.
  /// For example: `{'contentType': 'headline', 'id': 'headline-123'}`.
  final Map<String, dynamic> data;

  /// Converts this [NotificationPayload] instance to JSON data.
  Map<String, dynamic> toJson() => _$NotificationPayloadToJson(this);

  @override
  List<Object?> get props => [title, body, imageUrl, data];

  /// Creates a copy of this [NotificationPayload] but with the given fields
  /// replaced with the new values.
  NotificationPayload copyWith({
    String? title,
    String? body,
    String? imageUrl,
    Map<String, dynamic>? data,
  }) {
    return NotificationPayload(
      title: title ?? this.title,
      body: body ?? this.body,
      imageUrl: imageUrl ?? this.imageUrl,
      data: data ?? this.data,
    );
  }
}
