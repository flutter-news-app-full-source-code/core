// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_display_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedDisplayPreferences _$FeedDisplayPreferencesFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'FeedDisplayPreferences',
  json,
  ($checkedConvert) {
    final val = FeedDisplayPreferences(
      headlineDensity: $checkedConvert(
        'headline_density',
        (v) =>
            $enumDecodeNullable(_$HeadlineDensityEnumMap, v) ??
            HeadlineDensity.standard,
      ),
      headlineImageStyle: $checkedConvert(
        'headline_image_style',
        (v) =>
            $enumDecodeNullable(_$HeadlineImageStyleEnumMap, v) ??
            HeadlineImageStyle.smallThumbnail,
      ),
      showSourceInHeadlineFeed: $checkedConvert(
        'show_source_in_headline_feed',
        (v) => v as bool? ?? true,
      ),
      showPublishDateInHeadlineFeed: $checkedConvert(
        'show_publish_date_in_headline_feed',
        (v) => v as bool? ?? true,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'headlineDensity': 'headline_density',
    'headlineImageStyle': 'headline_image_style',
    'showSourceInHeadlineFeed': 'show_source_in_headline_feed',
    'showPublishDateInHeadlineFeed': 'show_publish_date_in_headline_feed',
  },
);

Map<String, dynamic> _$FeedDisplayPreferencesToJson(
  FeedDisplayPreferences instance,
) => <String, dynamic>{
  'headline_density': _$HeadlineDensityEnumMap[instance.headlineDensity]!,
  'headline_image_style':
      _$HeadlineImageStyleEnumMap[instance.headlineImageStyle]!,
  'show_source_in_headline_feed': instance.showSourceInHeadlineFeed,
  'show_publish_date_in_headline_feed': instance.showPublishDateInHeadlineFeed,
};

const _$HeadlineDensityEnumMap = {
  HeadlineDensity.compact: 'compact',
  HeadlineDensity.standard: 'standard',
  HeadlineDensity.comfortable: 'comfortable',
};

const _$HeadlineImageStyleEnumMap = {
  HeadlineImageStyle.hidden: 'hidden',
  HeadlineImageStyle.smallThumbnail: 'smallThumbnail',
  HeadlineImageStyle.largeThumbnail: 'largeThumbnail',
};
