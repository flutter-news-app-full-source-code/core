// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdConfig _$AdConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AdConfig', json, ($checkedConvert) {
      final val = AdConfig(
        guestAdFrequency: $checkedConvert(
          'guestAdFrequency',
          (v) => (v as num).toInt(),
        ),
        guestAdPlacementInterval: $checkedConvert(
          'guestAdPlacementInterval',
          (v) => (v as num).toInt(),
        ),
        authenticatedAdFrequency: $checkedConvert(
          'authenticatedAdFrequency',
          (v) => (v as num).toInt(),
        ),
        authenticatedAdPlacementInterval: $checkedConvert(
          'authenticatedAdPlacementInterval',
          (v) => (v as num).toInt(),
        ),
        premiumAdFrequency: $checkedConvert(
          'premiumAdFrequency',
          (v) => (v as num).toInt(),
        ),
        premiumAdPlacementInterval: $checkedConvert(
          'premiumAdPlacementInterval',
          (v) => (v as num).toInt(),
        ),
        guestArticlesToReadBeforeShowingInterstitialAds: $checkedConvert(
          'guestArticlesToReadBeforeShowingInterstitialAds',
          (v) => (v as num).toInt(),
        ),
        standardUserArticlesToReadBeforeShowingInterstitialAds: $checkedConvert(
          'standardUserArticlesToReadBeforeShowingInterstitialAds',
          (v) => (v as num).toInt(),
        ),
        premiumUserArticlesToReadBeforeShowingInterstitialAds: $checkedConvert(
          'premiumUserArticlesToReadBeforeShowingInterstitialAds',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AdConfigToJson(AdConfig instance) => <String, dynamic>{
  'guestAdFrequency': instance.guestAdFrequency,
  'guestAdPlacementInterval': instance.guestAdPlacementInterval,
  'authenticatedAdFrequency': instance.authenticatedAdFrequency,
  'authenticatedAdPlacementInterval': instance.authenticatedAdPlacementInterval,
  'premiumAdFrequency': instance.premiumAdFrequency,
  'premiumAdPlacementInterval': instance.premiumAdPlacementInterval,
  'guestArticlesToReadBeforeShowingInterstitialAds':
      instance.guestArticlesToReadBeforeShowingInterstitialAds,
  'standardUserArticlesToReadBeforeShowingInterstitialAds':
      instance.standardUserArticlesToReadBeforeShowingInterstitialAds,
  'premiumUserArticlesToReadBeforeShowingInterstitialAds':
      instance.premiumUserArticlesToReadBeforeShowingInterstitialAds,
};
