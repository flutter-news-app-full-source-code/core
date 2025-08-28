// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_interstitial_ad_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleInterstitialAdConfiguration _$ArticleInterstitialAdConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ArticleInterstitialAdConfiguration', json, (
  $checkedConvert,
) {
  final val = ArticleInterstitialAdConfiguration(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    adType: $checkedConvert(
      'adType',
      (v) => $enumDecodeNullable(_$AdTypeEnumMap, v) ?? AdType.interstitial,
    ),
    frequencyConfig: $checkedConvert(
      'frequencyConfig',
      (v) => ArticleInterstitialAdFrequencyConfig.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$ArticleInterstitialAdConfigurationToJson(
  ArticleInterstitialAdConfiguration instance,
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
