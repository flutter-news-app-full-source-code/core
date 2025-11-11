import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/interests/interest_criteria.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'interest.g.dart';

/// {@template interest}
/// Represents a user's saved set of content criteria, unifying the concepts
/// of a saved "Feed Filter" for on-demand feed filtering and a "Notification
/// Subscription" for push alerts.
///
/// An Interest is a single entity that can be used for multiple purposes,
/// determined by the `isPinnedFeedFilter` flag and the `deliveryTypes` set.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class Interest extends Equatable {
  /// {@macro interest}
  const Interest({
    required this.id,
    required this.userId,
    required this.name,
    required this.criteria,
    required this.isPinnedFeedFilter,
    required this.deliveryTypes,
  });

  /// Creates an [Interest] from JSON data.
  factory Interest.fromJson(Map<String, dynamic> json) =>
      _$InterestFromJson(json);

  /// The unique identifier for the interest.
  final String id;

  /// The ID of the user who owns this interest.
  final String userId;

  /// The user-provided name for this interest (e.g., "US Tech News").
  final String name;

  /// The filtering criteria for this interest, containing lists of full
  /// Topic, Source, and Country objects.
  final InterestCriteria criteria;

  /// A flag indicating whether this interest should be available as a
  /// one-click pinned filter in the user's feed.
  final bool isPinnedFeedFilter;

  /// The set of notification delivery types the user has opted into for this
  /// interest (e.g., `breakingOnly`, `dailyDigest`).
  ///
  /// An empty set means the user will not receive any push notifications for
  /// news matching this interest.
  final Set<PushNotificationSubscriptionDeliveryType> deliveryTypes;

  /// Converts this [Interest] instance to JSON data.
  Map<String, dynamic> toJson() => _$InterestToJson(this);

  @override
  List<Object> get props => [
    id,
    userId,
    name,
    criteria,
    isPinnedFeedFilter,
    deliveryTypes,
  ];

  /// Creates a copy of this [Interest] but with the given fields replaced
  /// with the new values.
  Interest copyWith({
    String? id,
    String? userId,
    String? name,
    InterestCriteria? criteria,
    bool? isPinnedFeedFilter,
    Set<PushNotificationSubscriptionDeliveryType>? deliveryTypes,
  }) {
    return Interest(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      name: name ?? this.name,
      criteria: criteria ?? this.criteria,
      isPinnedFeedFilter: isPinnedFeedFilter ?? this.isPinnedFeedFilter,
      deliveryTypes: deliveryTypes ?? this.deliveryTypes,
    );
  }
}
