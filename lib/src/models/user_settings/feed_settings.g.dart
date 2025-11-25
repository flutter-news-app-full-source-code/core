// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedSettings _$FeedSettingsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FeedSettings', json, ($checkedConvert) {
      final val = FeedSettings(
        feedItemDensity: $checkedConvert(
          'feedItemDensity',
          (v) => $enumDecode(_$FeedItemDensityEnumMap, v),
        ),
        feedItemImageStyle: $checkedConvert(
          'feedItemImageStyle',
          (v) => $enumDecode(_$FeedItemImageStyleEnumMap, v),
        ),
        feedItemClickBehavior: $checkedConvert(
          'feedItemClickBehavior',
          (v) => $enumDecode(_$FeedItemClickBehaviorEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FeedSettingsToJson(FeedSettings instance) =>
    <String, dynamic>{
      'feedItemDensity': _$FeedItemDensityEnumMap[instance.feedItemDensity]!,
      'feedItemImageStyle':
          _$FeedItemImageStyleEnumMap[instance.feedItemImageStyle]!,
      'feedItemClickBehavior':
          _$FeedItemClickBehaviorEnumMap[instance.feedItemClickBehavior]!,
    };

const _$FeedItemDensityEnumMap = {
  FeedItemDensity.compact: 'compact',
  FeedItemDensity.standard: 'standard',
  FeedItemDensity.comfortable: 'comfortable',
};

const _$FeedItemImageStyleEnumMap = {
  FeedItemImageStyle.hidden: 'hidden',
  FeedItemImageStyle.smallThumbnail: 'smallThumbnail',
  FeedItemImageStyle.largeThumbnail: 'largeThumbnail',
};

const _$FeedItemClickBehaviorEnumMap = {
  FeedItemClickBehavior.defaultBehavior: 'default',
  FeedItemClickBehavior.internalNavigation: 'internalNavigation',
  FeedItemClickBehavior.externalNavigation: 'externalNavigation',
};
