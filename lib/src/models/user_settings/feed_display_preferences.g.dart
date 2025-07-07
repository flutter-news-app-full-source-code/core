// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_display_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedDisplayPreferences _$FeedDisplayPreferencesFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('FeedDisplayPreferences', json, ($checkedConvert) {
  final val = FeedDisplayPreferences(
    headlineDensity: $checkedConvert(
      'headlineDensity',
      (v) => $enumDecode(_$HeadlineDensityEnumMap, v),
    ),
    headlineImageStyle: $checkedConvert(
      'headlineImageStyle',
      (v) => $enumDecode(_$HeadlineImageStyleEnumMap, v),
    ),
    showSourceInHeadlineFeed: $checkedConvert(
      'showSourceInHeadlineFeed',
      (v) => v as bool,
    ),
    showPublishDateInHeadlineFeed: $checkedConvert(
      'showPublishDateInHeadlineFeed',
      (v) => v as bool,
    ),
  );
  return val;
});

Map<String, dynamic> _$FeedDisplayPreferencesToJson(
  FeedDisplayPreferences instance,
) => <String, dynamic>{
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
