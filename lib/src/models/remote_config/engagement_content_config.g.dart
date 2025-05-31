// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engagement_content_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EngagementContentConfig _$EngagementContentConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'EngagementContentConfig',
      json,
      ($checkedConvert) {
        final val = EngagementContentConfig(
          guestDaysBetweenEngagementContentShows: $checkedConvert(
              'guest_days_between_engagement_content_shows',
              (v) => (v as num).toInt()),
          standardUserDaysBetweenEngagementContentShows: $checkedConvert(
              'standard_user_days_between_engagement_content_shows',
              (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'guestDaysBetweenEngagementContentShows':
            'guest_days_between_engagement_content_shows',
        'standardUserDaysBetweenEngagementContentShows':
            'standard_user_days_between_engagement_content_shows'
      },
    );

Map<String, dynamic> _$EngagementContentConfigToJson(
        EngagementContentConfig instance) =>
    <String, dynamic>{
      'guest_days_between_engagement_content_shows':
          instance.guestDaysBetweenEngagementContentShows,
      'standard_user_days_between_engagement_content_shows':
          instance.standardUserDaysBetweenEngagementContentShows,
    };
