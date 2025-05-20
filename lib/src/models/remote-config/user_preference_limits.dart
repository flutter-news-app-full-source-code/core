import 'package:equatable/equatable.dart';
import 'package:ht_shared/ht_shared.dart'
    show AppConfig, UserContentPreferences;
import 'package:ht_shared/src/models/models.dart'
    show AppConfig, UserContentPreferences;
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'user_preference_limits.g.dart';

/// {@template user_preference_limits}
/// Defines the maximum number of items a user can follow or save,
/// tiered by user role (Guest, Authenticated, Premium).
///
/// This model is part of the overall [AppConfig] and is used by the
/// backend to enforce limits during save/update operations for
/// [UserContentPreferences]. Clients can also fetch this configuration
/// to provide UI feedback (e.g., showing current usage vs. limit,
/// disabling buttons).
///
/// The limits are defined as follows:
/// - Followed Items (Countries, Sources, Categories): The limit applies
///   individually to each list (e.g., a Guest user can follow up to 5
///   Countries, up to 5 Sources, and up to 5 Categories).
/// - Saved Headlines: The limit applies to the total number of headlines
///   a user can save.
///
/// **Tiered Limits defaults:**
/// - **Guest User:**
///   - Followed Items (Countries, Sources, Categories): 5 each
///   - Saved Headlines: 10
/// - **Authenticated User:**
///   - Followed Items (Countries, Sources, Categories): 15 each
///   - Saved Headlines: 30
/// - **Premium User:**
///   - Followed Items (Countries, Sources, Categories): 30 each
///   - Saved Headlines: 100
///
/// These limits are configurable to balance performance (allowing fetching
/// full objects within these limits) and feature differentiation across tiers.
/// Backend enforcement is crucial to prevent exceeding these limits.
/// {@endtemplate}
@immutable
@JsonSerializable(explicitToJson: true)
class UserPreferenceLimits extends Equatable {
  /// {@macro user_preference_limits}
  const UserPreferenceLimits({
    required this.guestFollowedItemsLimit,
    required this.guestSavedHeadlinesLimit,
    required this.authenticatedFollowedItemsLimit,
    required this.authenticatedSavedHeadlinesLimit,
    required this.premiumFollowedItemsLimit,
    required this.premiumSavedHeadlinesLimit,
  });

  /// Factory method to create a [UserPreferenceLimits] instance from a JSON map.
  factory UserPreferenceLimits.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceLimitsFromJson(json);

  /// Maximum number of countries, sources, or categories a Guest user can follow.
  /// This limit applies individually to each list.
  final int guestFollowedItemsLimit;

  /// Maximum number of headlines a Guest user can save.
  final int guestSavedHeadlinesLimit;

  /// Maximum number of countries, sources, or categories an Authenticated user can follow.
  /// This limit applies individually to each list.
  final int authenticatedFollowedItemsLimit;

  /// Maximum number of headlines an Authenticated user can save.
  final int authenticatedSavedHeadlinesLimit;

  /// Maximum number of countries, sources, or categories a Premium user can follow.
  /// This limit applies individually to each list.
  final int premiumFollowedItemsLimit;

  /// Maximum number of headlines a Premium user can save.
  final int premiumSavedHeadlinesLimit;

  /// Converts this [UserPreferenceLimits] instance to a JSON map.
  Map<String, dynamic> toJson() => _$UserPreferenceLimitsToJson(this);

  @override
  List<Object> get props => [
    guestFollowedItemsLimit,
    guestSavedHeadlinesLimit,
    authenticatedFollowedItemsLimit,
    authenticatedSavedHeadlinesLimit,
    premiumFollowedItemsLimit,
    premiumSavedHeadlinesLimit,
  ];

  @override
  bool get stringify => true;
}
