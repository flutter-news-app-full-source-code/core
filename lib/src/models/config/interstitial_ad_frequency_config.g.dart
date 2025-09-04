// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interstitial_ad_frequency_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterstitialAdFrequencyConfig _$InterstitialAdFrequencyConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InterstitialAdFrequencyConfig', json, ($checkedConvert) {
  final val = InterstitialAdFrequencyConfig(
    guestTransitionsBeforeShowingInterstitialAds: $checkedConvert(
      'guestTransitionsBeforeShowingInterstitialAds',
      (v) => (v as num).toInt(),
    ),
    standardUserTransitionsBeforeShowingInterstitialAds: $checkedConvert(
      'standardUserTransitionsBeforeShowingInterstitialAds',
      (v) => (v as num).toInt(),
    ),
    premiumUserTransitionsBeforeShowingInterstitialAds: $checkedConvert(
      'premiumUserTransitionsBeforeShowingInterstitialAds',
      (v) => (v as num).toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$InterstitialAdFrequencyConfigToJson(
  InterstitialAdFrequencyConfig instance,
) => <String, dynamic>{
  'guestTransitionsBeforeShowingInterstitialAds':
      instance.guestTransitionsBeforeShowingInterstitialAds,
  'standardUserTransitionsBeforeShowingInterstitialAds':
      instance.standardUserTransitionsBeforeShowingInterstitialAds,
  'premiumUserTransitionsBeforeShowingInterstitialAds':
      instance.premiumUserTransitionsBeforeShowingInterstitialAds,
};
