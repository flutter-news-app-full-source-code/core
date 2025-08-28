// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_interstitial_ad_frequency_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleInterstitialAdFrequencyConfig
_$ArticleInterstitialAdFrequencyConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ArticleInterstitialAdFrequencyConfig', json, (
      $checkedConvert,
    ) {
      final val = ArticleInterstitialAdFrequencyConfig(
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

Map<String, dynamic> _$ArticleInterstitialAdFrequencyConfigToJson(
  ArticleInterstitialAdFrequencyConfig instance,
) => <String, dynamic>{
  'guestArticlesToReadBeforeShowingInterstitialAds':
      instance.guestArticlesToReadBeforeShowingInterstitialAds,
  'standardUserArticlesToReadBeforeShowingInterstitialAds':
      instance.standardUserArticlesToReadBeforeShowingInterstitialAds,
  'premiumUserArticlesToReadBeforeShowingInterstitialAds':
      instance.premiumUserArticlesToReadBeforeShowingInterstitialAds,
};
