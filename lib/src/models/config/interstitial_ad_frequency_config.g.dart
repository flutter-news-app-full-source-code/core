// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interstitial_ad_frequency_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterstitialAdFrequencyConfig _$InterstitialAdFrequencyConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InterstitialAdFrequencyConfig', json, ($checkedConvert) {
  final val = InterstitialAdFrequencyConfig(
    transitionsBeforeShowingInterstitialAds: $checkedConvert(
      'transitionsBeforeShowingInterstitialAds',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$InterstitialAdFrequencyConfigToJson(
  InterstitialAdFrequencyConfig instance,
) => <String, dynamic>{
  'transitionsBeforeShowingInterstitialAds':
      instance.transitionsBeforeShowingInterstitialAds,
};
