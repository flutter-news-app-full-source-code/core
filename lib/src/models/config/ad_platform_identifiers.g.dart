// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_platform_identifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdPlatformIdentifiers _$AdPlatformIdentifiersFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdPlatformIdentifiers', json, ($checkedConvert) {
  final val = AdPlatformIdentifiers(
    androidNativeAdId: $checkedConvert(
      'androidNativeAdId',
      (v) => v as String?,
    ),
    androidBannerAdId: $checkedConvert(
      'androidBannerAdId',
      (v) => v as String?,
    ),
    androidInterstitialAdId: $checkedConvert(
      'androidInterstitialAdId',
      (v) => v as String?,
    ),
    androidRewardedAdId: $checkedConvert(
      'androidRewardedAdId',
      (v) => v as String?,
    ),
    iosNativeAdId: $checkedConvert('iosNativeAdId', (v) => v as String?),
    iosBannerAdId: $checkedConvert('iosBannerAdId', (v) => v as String?),
    iosInterstitialAdId: $checkedConvert(
      'iosInterstitialAdId',
      (v) => v as String?,
    ),
    iosRewardedAdId: $checkedConvert('iosRewardedAdId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AdPlatformIdentifiersToJson(
  AdPlatformIdentifiers instance,
) => <String, dynamic>{
  'androidNativeAdId': instance.androidNativeAdId,
  'androidBannerAdId': instance.androidBannerAdId,
  'androidInterstitialAdId': instance.androidInterstitialAdId,
  'androidRewardedAdId': instance.androidRewardedAdId,
  'iosNativeAdId': instance.iosNativeAdId,
  'iosBannerAdId': instance.iosBannerAdId,
  'iosInterstitialAdId': instance.iosInterstitialAdId,
  'iosRewardedAdId': instance.iosRewardedAdId,
};
