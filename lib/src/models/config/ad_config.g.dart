// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdConfig _$AdConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AdConfig', json, ($checkedConvert) {
      final val = AdConfig(
        primaryAdPlatform: $checkedConvert(
          'primaryAdPlatform',
          (v) => $enumDecode(_$AdPlatformTypeEnumMap, v),
        ),
        platformAdIdentifiers: $checkedConvert(
          'platformAdIdentifiers',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$AdPlatformTypeEnumMap, k),
              AdPlatformIdentifiers.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
        localAdsCatalog: $checkedConvert(
          'localAdsCatalog',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, LocalAd.fromJson(e as Map<String, dynamic>)),
          ),
        ),
        feedAdConfiguration: $checkedConvert(
          'feedAdConfiguration',
          (v) => FeedAdConfiguration.fromJson(v as Map<String, dynamic>),
        ),
        articleAdConfiguration: $checkedConvert(
          'articleAdConfiguration',
          (v) => ArticleAdConfiguration.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AdConfigToJson(AdConfig instance) => <String, dynamic>{
  'primaryAdPlatform': _$AdPlatformTypeEnumMap[instance.primaryAdPlatform]!,
  'platformAdIdentifiers': instance.platformAdIdentifiers.map(
    (k, e) => MapEntry(_$AdPlatformTypeEnumMap[k]!, e.toJson()),
  ),
  'localAdsCatalog': instance.localAdsCatalog.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'feedAdConfiguration': instance.feedAdConfiguration.toJson(),
  'articleAdConfiguration': instance.articleAdConfiguration.toJson(),
};

const _$AdPlatformTypeEnumMap = {
  AdPlatformType.admob: 'admob',
  AdPlatformType.local: 'local',
};
