import 'package:core/src/enums/subscription/subscription.dart' show SubscriptionTier;
import 'package:core/src/enums/subscription/subscription_tier.dart' show SubscriptionTier;
import 'package:core/src/models/config/saved_filter_limits.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_limits_config.g.dart';

/// {@template user_limits_config}
/// Defines role-based quantitative limits for user actions and preferences.
///
/// This model uses a map-based structure where the key is the
/// [SubscriptionTier] and the value is the specific limit for that tier,
/// ensuring a scalable
/// and maintainable configuration for user-related constraints.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true, includeIfNull: true, checked: true)
class UserLimitsConfig extends Equatable {
  /// {@macro user_limits_config}
  const UserLimitsConfig({
    required this.followedItems,
    required this.savedHeadlines,
    required this.savedHeadlineFilters,
    required this.savedSourceFilters,
    required this.reactionsPerDay,
    required this.commentsPerDay,
    required this.reportsPerDay,
  });

  /// Creates a [UserLimitsConfig] from JSON data.
  factory UserLimitsConfig.fromJson(Map<String, dynamic> json) =>
      _$UserLimitsConfigFromJson(json);

  /// Role-based limits for the number of followed items (topics, sources,
  /// countries). The limit applies to each category individually.
  final Map<SubscriptionTier, int> followedItems;

  /// Role-based limits for the number of saved headlines.
  final Map<SubscriptionTier, int> savedHeadlines;

  /// Role-based limits for saved headline filters, using the
  /// [SavedFilterLimits] model to define total, pinned, and notification
  /// subscription counts. This map defines the limits per user role.
  final Map<SubscriptionTier, SavedFilterLimits> savedHeadlineFilters;

  /// Role-based limits for saved source filters, using the
  /// [SavedFilterLimits] model to define total and pinned counts. This map
  /// defines the limits per user role.
  final Map<SubscriptionTier, SavedFilterLimits> savedSourceFilters;

  /// Role-based limits for the number of reactions a user can perform per day.
  final Map<SubscriptionTier, int> reactionsPerDay;

  /// Role-based limits for the number of comments a user can post per day.
  ///
  /// This limit applies specifically to the creation of new comments and does
  /// not include other interactions like reactions.
  final Map<SubscriptionTier, int> commentsPerDay;

  /// Role-based limits for the number of reports a user can submit per day.
  final Map<SubscriptionTier, int> reportsPerDay;

  /// Converts this [UserLimitsConfig] instance to JSON data.
  Map<String, dynamic> toJson() => _$UserLimitsConfigToJson(this);

  @override
  List<Object> get props => [
    followedItems,
    savedHeadlines,
    savedHeadlineFilters,
    savedSourceFilters,
    reactionsPerDay,
    commentsPerDay,
    reportsPerDay,
  ];

  /// Creates a copy of this [UserLimitsConfig] but with the given fields
  /// replaced with the new values.
  UserLimitsConfig copyWith({
    Map<SubscriptionTier, int>? followedItems,
    Map<SubscriptionTier, int>? savedHeadlines,
    Map<SubscriptionTier, SavedFilterLimits>? savedHeadlineFilters,
    Map<SubscriptionTier, SavedFilterLimits>? savedSourceFilters,
    Map<SubscriptionTier, int>? commentsPerDay,
    Map<SubscriptionTier, int>? reportsPerDay,
    Map<SubscriptionTier, int>? reactionsPerDay,
  }) {
    return UserLimitsConfig(
      followedItems: followedItems ?? this.followedItems,
      savedHeadlines: savedHeadlines ?? this.savedHeadlines,
      savedHeadlineFilters: savedHeadlineFilters ?? this.savedHeadlineFilters,
      savedSourceFilters: savedSourceFilters ?? this.savedSourceFilters,
      commentsPerDay: commentsPerDay ?? this.commentsPerDay,
      reportsPerDay: reportsPerDay ?? this.reportsPerDay,
      reactionsPerDay: reactionsPerDay ?? this.reactionsPerDay,
    );
  }
}
