// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interstitial_ad_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterstitialAdConfiguration _$InterstitialAdConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InterstitialAdConfiguration', json, ($checkedConvert) {
  final val = InterstitialAdConfiguration(
    enabled: $checkedConvert('enabled', (v) => v as bool),
    feedInterstitialAdFrequencyConfig: $checkedConvert(
      'feedInterstitialAdFrequencyConfig',
      (v) => InterstitialAdFrequencyConfig.fromJson(v as Map<String, dynamic>),
    ),
    adType: $checkedConvert(
      'adType',
      (v) => $enumDecodeNullable(_$AdTypeEnumMap, v) ?? AdType.interstitial,
    ),
  );
  return val;
});

Map<String, dynamic> _$InterstitialAdConfigurationToJson(
  InterstitialAdConfiguration instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'adType': _$AdTypeEnumMap[instance.adType]!,
  'feedInterstitialAdFrequencyConfig': instance
      .feedInterstitialAdFrequencyConfig
      .toJson(),
};

const _$AdTypeEnumMap = {
  AdType.banner: 'banner',
  AdType.native: 'native',
  AdType.video: 'video',
  AdType.interstitial: 'interstitial',
};
