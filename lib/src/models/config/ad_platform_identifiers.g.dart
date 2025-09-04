// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_platform_identifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdPlatformIdentifiers _$AdPlatformIdentifiersFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdPlatformIdentifiers', json, ($checkedConvert) {
  final val = AdPlatformIdentifiers(
    feedNativeAdId: $checkedConvert('feedNativeAdId', (v) => v as String?),
    feedBannerAdId: $checkedConvert('feedBannerAdId', (v) => v as String?),
    feedToArticleInterstitialAdId: $checkedConvert(
      'feedToArticleInterstitialAdId',
      (v) => v as String?,
    ),
    inArticleNativeAdId: $checkedConvert(
      'inArticleNativeAdId',
      (v) => v as String?,
    ),
    inArticleBannerAdId: $checkedConvert(
      'inArticleBannerAdId',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$AdPlatformIdentifiersToJson(
  AdPlatformIdentifiers instance,
) => <String, dynamic>{
  'feedNativeAdId': instance.feedNativeAdId,
  'feedBannerAdId': instance.feedBannerAdId,
  'feedToArticleInterstitialAdId': instance.feedToArticleInterstitialAdId,
  'inArticleNativeAdId': instance.inArticleNativeAdId,
  'inArticleBannerAdId': instance.inArticleBannerAdId,
};
