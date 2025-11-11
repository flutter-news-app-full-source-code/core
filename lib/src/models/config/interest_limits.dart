import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'interest_limits.g.dart';

/// {@template interest_limits}
/// Defines the specific limits for a user role regarding the "Interests"
/// feature.
///
/// This includes the total number of interests a user can create, how many
/// can be used as a pinned feed filters, and the subscription limits for each
/// notification type.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class InterestLimits extends Equatable {
  /// {@macro interest_limits}
  const InterestLimits({
    required this.total,
    required this.pinnedFeedFilters,
    required this.notifications,
  });

  /// Creates an [InterestLimits] from JSON data.
  factory InterestLimits.fromJson(Map<String, dynamic> json) =>
      _$InterestLimitsFromJson(json);

  /// The total number of interests a user with this role can create.
  final int total;

  /// The maximum number of interests that can be marked as a "pinned feed filter"
  /// by a user with this role.
  final int pinnedFeedFilters;

  /// A map defining the subscription limits for each notification type.
  ///
  /// The key is the [PushNotificationSubscriptionDeliveryType], and the value
  /// is the maximum number of interests a user can subscribe to that type.
  /// A value of `0` means the user cannot subscribe to that notification type.
  final Map<PushNotificationSubscriptionDeliveryType, int> notifications;

  /// Converts this [InterestLimits] instance to JSON data.
  Map<String, dynamic> toJson() => _$InterestLimitsToJson(this);

  @override
  List<Object> get props => [total, pinnedFeedFilters, notifications];

  /// Creates a copy of this [InterestLimits] but with the given fields
  /// replaced with the new values.
  InterestLimits copyWith({
    int? total,
    int? pinnedFeedFilters,
    Map<PushNotificationSubscriptionDeliveryType, int>? notifications,
  }) {
    return InterestLimits(
      total: total ?? this.total,
      pinnedFeedFilters: pinnedFeedFilters ?? this.pinnedFeedFilters,
      notifications: notifications ?? this.notifications,
    );
  }
}
