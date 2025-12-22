// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_ad_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedAdConfiguration _$FeedAdConfigurationFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FeedAdConfiguration', json, ($checkedConvert) {
      final val = FeedAdConfiguration(
        enabled: $checkedConvert('enabled', (v) => v as bool),
        adType: $checkedConvert(
          'adType',
          (v) => $enumDecode(_$AdTypeEnumMap, v),
        ),
        visibleTo: $checkedConvert(
          'visibleTo',
          (v) => (v as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              $enumDecode(_$AccessTierEnumMap, k),
              FeedAdFrequencyConfig.fromJson(e as Map<String, dynamic>),
            ),
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FeedAdConfigurationToJson(
  FeedAdConfiguration instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'adType': _$AdTypeEnumMap[instance.adType]!,
  'visibleTo': instance.visibleTo.map(
    (k, e) => MapEntry(_$AccessTierEnumMap[k]!, e.toJson()),
  ),
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};

const _$AccessTierEnumMap = {
  AccessTier.guest: 'guest',
  AccessTier.standard: 'standard',
  AccessTier.premium: 'premium',
};
