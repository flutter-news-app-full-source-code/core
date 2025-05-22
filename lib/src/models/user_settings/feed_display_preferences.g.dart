// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_display_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedDisplayPreferences _$FeedDisplayPreferencesFromJson(
  Map<String, dynamic> json,
) =>
    FeedDisplayPreferences(
      headlineDensity: $enumDecodeNullable(
            _$HeadlineDensityEnumMap,
            json['headlineDensity'],
          ) ??
          HeadlineDensity.standard,
      headlineImageStyle: $enumDecodeNullable(
            _$HeadlineImageStyleEnumMap,
            json['headlineImageStyle'],
          ) ??
          HeadlineImageStyle.smallThumbnail,
      showSourceInHeadlineFeed:
          json['showSourceInHeadlineFeed'] as bool? ?? true,
      showPublishDateInHeadlineFeed:
          json['showPublishDateInHeadlineFeed'] as bool? ?? true,
    );

Map<String, dynamic> _$FeedDisplayPreferencesToJson(
  FeedDisplayPreferences instance,
) =>
    <String, dynamic>{
      'headlineDensity': _$HeadlineDensityEnumMap[instance.headlineDensity]!,
      'headlineImageStyle':
          _$HeadlineImageStyleEnumMap[instance.headlineImageStyle]!,
      'showSourceInHeadlineFeed': instance.showSourceInHeadlineFeed,
      'showPublishDateInHeadlineFeed': instance.showPublishDateInHeadlineFeed,
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
