import 'package:core/src/enums/enums.dart';
import 'package:core/src/models/user_preferences/saved_headline_filter.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'saved_filter_limits.g.dart';

/// {@template saved_filter_limits}
/// Defines the specific limits for a user role regarding a type of saved filter
/// (e.g., for headlines or for sources).
///
/// This includes the total number of filters a user can create, how many
/// can be pinned, and for applicable filter types, the subscription limits
/// for each notification type.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class SavedFilterLimits extends Equatable {
  /// {@macro saved_filter_limits}
  const SavedFilterLimits({
    required this.total,
    required this.pinned,
    this.notificationSubscriptions,
  });

  /// Creates a [SavedFilterLimits] from JSON data.
  factory SavedFilterLimits.fromJson(Map<String, dynamic> json) =>
      _$SavedFilterLimitsFromJson(json);

  /// The total number of filters of a specific type (e.g., headline filters)
  /// a user with this role can create.
  final int total;

  /// The maximum number of filters of a specific type that can be marked as
  /// "pinned" by a user with this role.
  final int pinned;

  /// An optional map defining the subscription limits for each notification type.
  ///
  /// This is only applicable to filter types that support notifications, such
  /// as [SavedHeadlineFilter].
  ///
  /// The key is the [PushNotificationSubscriptionDeliveryType], and the value
  /// is the maximum number of filters a user can subscribe to that type.
  /// A value of `0` means the user cannot subscribe to that notification type.
  final Map<PushNotificationSubscriptionDeliveryType, int>?
  notificationSubscriptions;

  /// Converts this [SavedFilterLimits] instance to JSON data.
  Map<String, dynamic> toJson() => _$SavedFilterLimitsToJson(this);

  @override
  List<Object?> get props => [total, pinned, notificationSubscriptions];

  /// Creates a copy of this [SavedFilterLimits] but with the given fields
  /// replaced with the new values.
  SavedFilterLimits copyWith({
    int? total,
    int? pinned,
    Map<PushNotificationSubscriptionDeliveryType, int>?
    notificationSubscriptions,
  }) {
    return SavedFilterLimits(
      total: total ?? this.total,
      pinned: pinned ?? this.pinned,
      notificationSubscriptions:
          notificationSubscriptions ?? this.notificationSubscriptions,
    );
  }
}
