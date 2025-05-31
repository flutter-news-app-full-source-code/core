// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preference_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreferenceConfig _$UserPreferenceConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserPreferenceConfig',
      json,
      ($checkedConvert) {
        final val = UserPreferenceConfig(
          guestFollowedItemsLimit: $checkedConvert(
              'guest_followed_items_limit', (v) => (v as num).toInt()),
          guestSavedHeadlinesLimit: $checkedConvert(
              'guest_saved_headlines_limit', (v) => (v as num).toInt()),
          authenticatedFollowedItemsLimit: $checkedConvert(
              'authenticated_followed_items_limit', (v) => (v as num).toInt()),
          authenticatedSavedHeadlinesLimit: $checkedConvert(
              'authenticated_saved_headlines_limit', (v) => (v as num).toInt()),
          premiumFollowedItemsLimit: $checkedConvert(
              'premium_followed_items_limit', (v) => (v as num).toInt()),
          premiumSavedHeadlinesLimit: $checkedConvert(
              'premium_saved_headlines_limit', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'guestFollowedItemsLimit': 'guest_followed_items_limit',
        'guestSavedHeadlinesLimit': 'guest_saved_headlines_limit',
        'authenticatedFollowedItemsLimit': 'authenticated_followed_items_limit',
        'authenticatedSavedHeadlinesLimit':
            'authenticated_saved_headlines_limit',
        'premiumFollowedItemsLimit': 'premium_followed_items_limit',
        'premiumSavedHeadlinesLimit': 'premium_saved_headlines_limit'
      },
    );

Map<String, dynamic> _$UserPreferenceConfigToJson(
        UserPreferenceConfig instance) =>
    <String, dynamic>{
      'guest_followed_items_limit': instance.guestFollowedItemsLimit,
      'guest_saved_headlines_limit': instance.guestSavedHeadlinesLimit,
      'authenticated_followed_items_limit':
          instance.authenticatedFollowedItemsLimit,
      'authenticated_saved_headlines_limit':
          instance.authenticatedSavedHeadlinesLimit,
      'premium_followed_items_limit': instance.premiumFollowedItemsLimit,
      'premium_saved_headlines_limit': instance.premiumSavedHeadlinesLimit,
    };
