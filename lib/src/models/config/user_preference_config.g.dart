// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferenceConfig _$UserPreferenceConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserPreferenceConfig', json, ($checkedConvert) {
  final val = UserPreferenceConfig(
    guestFollowedItemsLimit: $checkedConvert(
      'guestFollowedItemsLimit',
      (v) => (v as num).toInt(),
    ),
    guestSavedHeadlinesLimit: $checkedConvert(
      'guestSavedHeadlinesLimit',
      (v) => (v as num).toInt(),
    ),
    authenticatedFollowedItemsLimit: $checkedConvert(
      'authenticatedFollowedItemsLimit',
      (v) => (v as num).toInt(),
    ),
    authenticatedSavedHeadlinesLimit: $checkedConvert(
      'authenticatedSavedHeadlinesLimit',
      (v) => (v as num).toInt(),
    ),
    premiumFollowedItemsLimit: $checkedConvert(
      'premiumFollowedItemsLimit',
      (v) => (v as num).toInt(),
    ),
    premiumSavedHeadlinesLimit: $checkedConvert(
      'premiumSavedHeadlinesLimit',
      (v) => (v as num).toInt(),
    ),
    guestSavedFiltersLimit: $checkedConvert(
      'guestSavedFiltersLimit',
      (v) => (v as num).toInt(),
    ),
    authenticatedSavedFiltersLimit: $checkedConvert(
      'authenticatedSavedFiltersLimit',
      (v) => (v as num).toInt(),
    ),
    premiumSavedFiltersLimit: $checkedConvert(
      'premiumSavedFiltersLimit',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UserPreferenceConfigToJson(
  UserPreferenceConfig instance,
) => <String, dynamic>{
  'guestFollowedItemsLimit': instance.guestFollowedItemsLimit,
  'guestSavedHeadlinesLimit': instance.guestSavedHeadlinesLimit,
  'authenticatedFollowedItemsLimit': instance.authenticatedFollowedItemsLimit,
  'authenticatedSavedHeadlinesLimit': instance.authenticatedSavedHeadlinesLimit,
  'premiumFollowedItemsLimit': instance.premiumFollowedItemsLimit,
  'premiumSavedHeadlinesLimit': instance.premiumSavedHeadlinesLimit,
  'guestSavedFiltersLimit': instance.guestSavedFiltersLimit,
  'authenticatedSavedFiltersLimit': instance.authenticatedSavedFiltersLimit,
  'premiumSavedFiltersLimit': instance.premiumSavedFiltersLimit,
};
