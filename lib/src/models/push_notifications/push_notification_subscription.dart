import 'package:core/src/enums/subscription_delivery_type.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'push_notification_subscription.g.dart';

/// {@template push_notification_subscription}
/// Represents a user's saved notification filter.
///
/// This model stores a named set of criteria, including topics, sources, and
/// countries, allowing users to subscribe to notifications for specific news
/// segments. It also defines which types of notifications the user wants to
/// receive for this filter (e.g., breaking news, daily digests).
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class PushNotificationSubscription extends Equatable {
  /// {@macro push_notification_subscription}
  const PushNotificationSubscription({
    required this.id,
    required this.userId,
    required this.name,
    required this.topics,
    required this.sources,
    required this.countries,
    required this.deliveryTypes,
  });

  /// Creates a [PushNotificationSubscription] from JSON data.
  factory PushNotificationSubscription.fromJson(Map<String, dynamic> json) =>
      _$PushNotificationSubscriptionFromJson(json);

  /// The unique identifier for the notification subscription.
  final String id;

  /// The ID of the user who owns this subscription.
  final String userId;

  /// The user-provided name for this saved subscription.
  final String name;

  /// A list of topic IDs to include in the filter.
  /// An empty list means no topic filter is applied.
  final List<String> topics;

  /// A list of source IDs to include in the filter.
  /// An empty list means no source filter is applied.
  final List<String> sources;

  /// A list of country IDs to include in the filter.
  /// An empty list means no country filter is applied.
  final List<String> countries;

  /// The set of delivery types the user has opted into for this subscription.
  ///
  /// For example, a user could choose to receive both `breakingOnly` and
  /// `dailyDigest` notifications for the same subscription.
  final Set<SubscriptionDeliveryType> deliveryTypes;

  /// Converts this [PushNotificationSubscription] instance to JSON data.
  Map<String, dynamic> toJson() => _$PushNotificationSubscriptionToJson(this);

  @override
  List<Object> get props => [
    id,
    userId,
    name,
    topics,
    sources,
    countries,
    deliveryTypes,
  ];

  /// Creates a copy of this [PushNotificationSubscription] but with the given
  /// fields replaced with the new values.
  PushNotificationSubscription copyWith({
    String? id,
    String? userId,
    String? name,
    List<String>? topics,
    List<String>? sources,
    List<String>? countries,
    Set<SubscriptionDeliveryType>? deliveryTypes,
  }) {
    return PushNotificationSubscription(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      topics: topics ?? this.topics,
      sources: sources ?? this.sources,
      countries: countries ?? this.countries,
      deliveryTypes: deliveryTypes ?? this.deliveryTypes,
    );
  }
}
