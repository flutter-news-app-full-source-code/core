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
        frequencyConfig: $checkedConvert(
          'frequencyConfig',
          (v) => FeedAdFrequencyConfig.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FeedAdConfigurationToJson(
  FeedAdConfiguration instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'adType': _$AdTypeEnumMap[instance.adType]!,
  'frequencyConfig': instance.frequencyConfig.toJson(),
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};
