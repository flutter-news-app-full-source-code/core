// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAppSettings _$UserAppSettingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserAppSettings',
      json,
      ($checkedConvert) {
        final val = UserAppSettings(
          id: $checkedConvert('id', (v) => v as String),
          displaySettings: $checkedConvert(
            'display_settings',
            (v) => v == null
                ? null
                : DisplaySettings.fromJson(v as Map<String, dynamic>),
          ),
          language: $checkedConvert('language', (v) => v as String?),
          feedPreferences: $checkedConvert(
            'feed_preferences',
            (v) => v == null
                ? null
                : FeedDisplayPreferences.fromJson(v as Map<String, dynamic>),
          ),
          engagementShownCounts: $checkedConvert(
            'engagement_shown_counts',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, (e as num).toInt()),
            ),
          ),
          engagementLastShownTimestamps: $checkedConvert(
            'engagement_last_shown_timestamps',
            (v) => _engagementLastShownTimestampsFromJson(
              v as Map<String, dynamic>?,
            ),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'displaySettings': 'display_settings',
        'feedPreferences': 'feed_preferences',
        'engagementShownCounts': 'engagement_shown_counts',
        'engagementLastShownTimestamps': 'engagement_last_shown_timestamps',
      },
    );

Map<String, dynamic> _$UserAppSettingsToJson(UserAppSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_settings': instance.displaySettings.toJson(),
      'language': instance.language,
      'feed_preferences': instance.feedPreferences.toJson(),
      'engagement_shown_counts': instance.engagementShownCounts,
      'engagement_last_shown_timestamps': _engagementLastShownTimestampsToJson(
        instance.engagementLastShownTimestamps,
      ),
    };
