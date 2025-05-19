// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference_limits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferenceLimits _$UserPreferenceLimitsFromJson(
  Map<String, dynamic> json,
) => UserPreferenceLimits(
  guestFollowedItemsLimit: (json['guestFollowedItemsLimit'] as num).toInt(),
  guestSavedHeadlinesLimit: (json['guestSavedHeadlinesLimit'] as num).toInt(),
  authenticatedFollowedItemsLimit:
      (json['authenticatedFollowedItemsLimit'] as num).toInt(),
  authenticatedSavedHeadlinesLimit:
      (json['authenticatedSavedHeadlinesLimit'] as num).toInt(),
  premiumFollowedItemsLimit: (json['premiumFollowedItemsLimit'] as num).toInt(),
  premiumSavedHeadlinesLimit:
      (json['premiumSavedHeadlinesLimit'] as num).toInt(),
);

Map<String, dynamic> _$UserPreferenceLimitsToJson(
  UserPreferenceLimits instance,
) => <String, dynamic>{
  'guestFollowedItemsLimit': instance.guestFollowedItemsLimit,
  'guestSavedHeadlinesLimit': instance.guestSavedHeadlinesLimit,
  'authenticatedFollowedItemsLimit': instance.authenticatedFollowedItemsLimit,
  'authenticatedSavedHeadlinesLimit': instance.authenticatedSavedHeadlinesLimit,
  'premiumFollowedItemsLimit': instance.premiumFollowedItemsLimit,
  'premiumSavedHeadlinesLimit': instance.premiumSavedHeadlinesLimit,
};
