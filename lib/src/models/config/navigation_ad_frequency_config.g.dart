// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_ad_frequency_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NavigationAdFrequencyConfig _$NavigationAdFrequencyConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NavigationAdFrequencyConfig', json, ($checkedConvert) {
  final val = NavigationAdFrequencyConfig(
    internalNavigationsBeforeShowingInterstitialAd: $checkedConvert(
      'internalNavigationsBeforeShowingInterstitialAd',
      (v) => (v as num).toInt(),
    ),
    externalNavigationsBeforeShowingInterstitialAd: $checkedConvert(
      'externalNavigationsBeforeShowingInterstitialAd',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$NavigationAdFrequencyConfigToJson(
  NavigationAdFrequencyConfig instance,
) => <String, dynamic>{
  'internalNavigationsBeforeShowingInterstitialAd':
      instance.internalNavigationsBeforeShowingInterstitialAd,
  'externalNavigationsBeforeShowingInterstitialAd':
      instance.externalNavigationsBeforeShowingInterstitialAd,
};
